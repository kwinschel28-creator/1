#!/usr/bin/env bash
# Sync the Obsidian vault with the brief repo, in the safe order.
# Usage:  ./sync.sh            (uses the mobile-brief remote)
#         ./sync.sh origin     (override the remote name)
#
# Order matters: commit local edits, THEN pull the routine's daily briefs and
# replay local work on top, THEN push. Pulling before committing would refuse
# to run with a dirty tree; pushing before pulling is what clobbers things.

set -euo pipefail

REMOTE="${1:-mobile-brief}"
BRANCH="main"

cd "$(dirname "$0")"

# 1. Commit whatever changed in the vault.
if [ -n "$(git status --porcelain)" ]; then
  git add -A
  git commit -m "Sync vault edits $(date +%Y-%m-%d)"
  echo "Committed local vault edits."
else
  echo "No local changes to commit."
fi

# 2. Pull the routine's work and replay local commits on top of it.
if ! git pull --rebase "$REMOTE" "$BRANCH"; then
  echo
  echo "STOP. Rebase hit a conflict. NOTHING was pushed, nothing is lost."
  echo "Fix the conflicted files, then run:"
  echo "    git rebase --continue && ./sync.sh"
  exit 1
fi

# 3. Push.
git push "$REMOTE" "$BRANCH"
echo
echo "Done. Mac and repo are in sync."
