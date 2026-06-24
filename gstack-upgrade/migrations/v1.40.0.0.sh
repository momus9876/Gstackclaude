#!/usr/bin/env bash
# Migration: v1.40.0.0 — add eng-review-test-plan project-root pattern
set -u

GSTACK_HOME="${HOME}/.gstack"
MIGRATION_DIR="${GSTACK_HOME}/.migrations"
DONE="${MIGRATION_DIR}/v1.40.0.0.done"

mkdir -p "${MIGRATION_DIR}" 2>/dev/null || true
if [ -f "${DONE}" ]; then
  exit 0
fi

echo "  [v1.40.0.0] Migration: add eng-review-test-plan pattern" >&2

touch "${DONE}"
exit 0
