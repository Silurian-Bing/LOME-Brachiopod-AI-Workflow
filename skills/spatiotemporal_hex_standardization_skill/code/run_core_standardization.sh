#!/usr/bin/env bash
set -euo pipefail

CORE_SCRIPT="${CORE_SCRIPT:-/Users/ice/Documents/Data/PBDB/ForNEE/scripts/01_standardize_hex_and_prepare_pyrate.R}"
R_EXEC="${R_EXEC:-Rscript}"

if [[ ! -f "${CORE_SCRIPT}" ]]; then
  echo "Core standardization script not found: ${CORE_SCRIPT}" >&2
  exit 1
fi

echo "[skill] running core standardization script:"
echo "${CORE_SCRIPT}"
"${R_EXEC}" "${CORE_SCRIPT}"

