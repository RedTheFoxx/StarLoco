#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${ROOT}"

echo "==> Premier build + démarrage Docker Compose..."
"${ROOT}/scripts/build.sh"
