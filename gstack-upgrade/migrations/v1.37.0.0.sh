#!/usr/bin/env bash
# Migration: v1.37.0.0 — split-engine gbrain (notice for existing users)
set -euo pipefail

if [ -z "${HOME:-}" ]; then
  echo "  [v1.37.0.0] HOME is unset — skipping migration." >&2
  exit 0
fi

GSTACK_HOME="${GSTACK_HOME:-$HOME/.gstack}"
MIGRATION_DIR="${GSTACK_HOME}/.migrations"
DONE_TOUCH="${MIGRATION_DIR}/v1.37.0.0.done"

mkdir -p "${MIGRATION_DIR}"

if [ -f "${DONE_TOUCH}" ]; then
  exit 0
fi

echo "  [v1.37.0.0] split-engine gbrain: optional local PGLite for code search is available." >&2

touch "${DONE_TOUCH}"
exit 0
