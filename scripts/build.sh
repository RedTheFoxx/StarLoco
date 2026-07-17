#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${ROOT}"

COMPOSE_FILE="${ROOT}/docker/docker-compose.yaml"
UP_AFTER_BUILD=1

usage() {
  cat <<'EOF'
Usage: ./scripts/build.sh [--no-up]

Compile login + game depuis les sources locales, construit les images Docker,
puis démarre la stack (sauf avec --no-up).
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --no-up) UP_AFTER_BUILD=0; shift ;;
    -h|--help) usage; exit 0 ;;
    *) echo "Option inconnue: $1" >&2; usage >&2; exit 1 ;;
  esac
done

require_dir() {
  local name="$1"
  if [[ ! -f "${ROOT}/${name}/build.gradle" && ! -d "${ROOT}/${name}/lang" ]]; then
    echo "Dossier manquant ou incomplet: ${name}/" >&2
    exit 1
  fi
}

require_dir login
require_dir game
require_dir web

if [[ ! -f "${ROOT}/login/build.gradle" ]]; then
  echo "login/ ne contient pas build.gradle." >&2
  exit 1
fi
if [[ ! -f "${ROOT}/game/build.gradle" ]]; then
  echo "game/ ne contient pas build.gradle." >&2
  exit 1
fi
if [[ ! -f "${ROOT}/web/lang/versions_fr.txt" ]]; then
  echo "web/lang manquant." >&2
  exit 1
fi

if ! command -v docker >/dev/null 2>&1; then
  echo "Docker est requis pour compiler et lancer la stack." >&2
  exit 1
fi

gradle_in_docker() {
  local project_dir="$1"
  local image="$2"
  local label="$3"

  echo "==> Compilation ${label} (${image})..."
  docker run --rm \
    -u "$(id -u):$(id -g)" \
    -e GRADLE_USER_HOME=/tmp/gradle-home \
    -v "${project_dir}:/home/gradle/project" \
    -w /home/gradle/project \
    "${image}" \
    gradle --no-daemon jar
}

gradle_in_docker "${ROOT}/login" "gradle:8.0.2-jdk8" "login (JDK 8)"
gradle_in_docker "${ROOT}/game" "gradle:8.7.0-jdk21" "game (JDK 21)"

if [[ ! -f "${ROOT}/login/build/libs/login.jar" ]]; then
  echo "Échec: login.jar introuvable après compilation." >&2
  exit 1
fi
if [[ ! -f "${ROOT}/game/build/libs/game.jar" ]]; then
  echo "Échec: game.jar introuvable après compilation." >&2
  exit 1
fi

echo "==> Build des images Docker locales..."
docker compose -f "${COMPOSE_FILE}" build

if [[ "${UP_AFTER_BUILD}" -eq 1 ]]; then
  echo "==> Démarrage de la stack..."
  docker compose -f "${COMPOSE_FILE}" up -d
  echo "Stack démarrée. Compte admin: admin / admindofusretro"
else
  echo "Images prêtes. Lance: docker compose -f docker/docker-compose.yaml up -d"
fi
