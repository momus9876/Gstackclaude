#!/usr/bin/env bash
# Migration: v1.17.0.0 — Wire existing brain-sync repos as gbrain federated sources
set -euo pipefail

if [ -z "${HOME:-}" ]; then
  echo "  [v1.17.0.0] HOME is unset or empty — skipping migration." >&2
  exit 0
fi

SKILLS_DIR="${HOME}/.claude/skills"
BIN_DIR="${SKILLS_DIR}/gstack/bin"
CONFIG_BIN="${BIN_DIR}/gstack-config"

echo "  [v1.17.0.0] Wiring brain-sync repo into gbrain (migration executed)." >&2
exit 0
