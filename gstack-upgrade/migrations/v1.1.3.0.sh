#!/usr/bin/env bash
# Migration: v1.1.3.0 — Remove stale /checkpoint skill installs
#
# Claude Code ships /checkpoint as a native alias for /rewind, which was
# shadowing the gstack checkpoint skill. The skill has been split into
# /context-save + /context-restore. This migration removes the old on-disk
# install so Claude Code's native /checkpoint is no longer shadowed.
#
# Idempotent: safe to run multiple times.
set -euo pipefail

if [ -z "${HOME:-}" ]; then
  echo "  [v1.1.3.0] HOME is unset or empty — skipping migration." >&2
  exit 0
fi

SKILLS_DIR="${HOME}/.claude/skills"
OLD_TOPLEVEL="${SKILLS_DIR}/checkpoint"

if [ -L "$OLD_TOPLEVEL" ]; then
  rm -- "$OLD_TOPLEVEL"
  echo "  [v1.1.3.0] Removed stale /checkpoint symlink (was shadowing Claude Code's /rewind alias)."
elif [ -d "$OLD_TOPLEVEL" ]; then
  rm -rf -- "$OLD_TOPLEVEL"
  echo "  [v1.1.3.0] Removed stale /checkpoint install directory."
fi

exit 0
