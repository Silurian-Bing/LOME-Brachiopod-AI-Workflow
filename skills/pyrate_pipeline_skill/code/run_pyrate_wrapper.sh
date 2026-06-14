#!/usr/bin/env bash
set -euo pipefail

CORE_SHELL="${CORE_SHELL:-/Users/ice/Documents/Data/PBDB/ForNEE/pyrate_shells/02_run_pyrate_global_5M.sh}"
PYTHON_EXEC="${PYTHON_EXEC:-python3}"
PYRATE_SCRIPT="${PYRATE_SCRIPT:-/Users/ice/PyRate/PyRate.py}"
N_GEN="${N_GEN:-5000000}"
N_REPS="${N_REPS:-10}"

if [[ ! -f "${CORE_SHELL}" ]]; then
  echo "Core PyRate shell not found: ${CORE_SHELL}" >&2
  exit 1
fi

if [[ ! -f "${PYRATE_SCRIPT}" ]]; then
  echo "PyRate script not found: ${PYRATE_SCRIPT}" >&2
  exit 1
fi

echo "[skill] PyRate wrapper"
echo "CORE_SHELL=${CORE_SHELL}"
echo "PYRATE_SCRIPT=${PYRATE_SCRIPT}"
echo "N_GEN=${N_GEN}"
echo "N_REPS=${N_REPS}"

PYTHON_EXEC="${PYTHON_EXEC}" PYRATE_SCRIPT="${PYRATE_SCRIPT}" N_GEN="${N_GEN}" N_REPS="${N_REPS}" bash "${CORE_SHELL}"

