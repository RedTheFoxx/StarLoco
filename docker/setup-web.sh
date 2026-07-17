#!/usr/bin/env bash
# Vérifie que les fichiers lang web/ sont présents pour Nginx.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
LANG_DIR="${ROOT}/web/lang"

if [[ -f "${LANG_DIR}/versions_fr.txt" && -d "${LANG_DIR}/swf" ]]; then
  echo "Fichiers lang disponibles : ${LANG_DIR}"
  echo "Montés automatiquement par docker compose (starloco_web)."
  exit 0
fi

echo "Dossier web/lang manquant ou incomplet (${LANG_DIR})." >&2
exit 1
