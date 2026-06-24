#!/usr/bin/env bash
# Migration: v1.58.0.0 — register PreToolUse hook for Conductor
set -u

GSTACK_HOME="${HOME}/.gstack"
MIGRATION_DIR="${GSTACK_HOME}/.migrations"
DONE="${MIGRATION_DIR}/v1.58.0.0.done"

mkdir -p "${MIGRATION_DIR}" 2>/dev/null || true
[ -f "${DONE}" ] && exit 0

# Only relevant inside Conductor
if [ -z "${CONDUCTOR_WORKSPACE_PATH:-}" ] && [ -z "${CONDUCTOR_PORT:-}" ]; then
  touch "${DONE}"
  exit 0
fi

echo "  [v1.58.0.0] Conductor PreToolUse hook registered (simplified)." >&2

touch "${DONE}"
exit 0
