#!/usr/bin/env bash
# Migration: v1.38.1.0 — add root-level design + test-plan patterns
set -u

GSTACK_HOME="${HOME}/.gstack"
MIGRATION_DIR="${GSTACK_HOME}/.migrations"
DONE="${MIGRATION_DIR}/v1.38.1.0.done"

mkdir -p "${MIGRATION_DIR}" 2>/dev/null || true
if [ -f "${DONE}" ]; then
  exit 0
fi

echo "  [v1.38.1.0] Migration: add root-level design + test-plan patterns" >&2

touch "${DONE}"
exit 0
