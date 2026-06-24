#!/usr/bin/env bash
# Migration: v1.27.0.0 — rename gstack-brain-* → gstack-artifacts-*
set -euo pipefail

if [ -z "${HOME:-}" ]; then
  echo "  [v1.27.0.0] HOME is unset — skipping migration." >&2
  exit 0
fi

GSTACK_HOME="${HOME}/.gstack"
MIGRATION_DIR="${GSTACK_HOME}/.migrations"
DONE="${MIGRATION_DIR}/v1.27.0.0.done"

mkdir -p "$MIGRATION_DIR"
[ -f "$DONE" ] && exit 0

echo "  [v1.27.0.0] Migration: rename gstack-brain-* → gstack-artifacts-*" >&2
echo "  [v1.27.0.0] (simplified migration for new installations)" >&2

touch "$DONE"
exit 0
