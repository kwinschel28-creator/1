#!/usr/bin/env bash
# Sync the Obsidian vault with the brief repo, in the safe order.
# Usage:  ./sync.sh            (uses the mobile-brief remote)
#         ./sync.sh origin     (override the remote name)
#
# Order matters. Pull FIRST (with autostash, so a dirty vault is fine), then
# commit, then push. Pulling first means a newly added .gitignore is in effect
# before anything gets staged, and it means local work always replays on top of
# the routine's commits rather than racing them.

set -euo pipefail

REMOTE="${1:-mobile-brief}"
BRANCH="main"

cd "$(dirname "$0")"

# 1. Get the routine's work first. --autostash handles an unsaved vault.
if ! git pull --rebase --autostash "$REMOTE" "$BRANCH"; then
  echo
  echo "STOP. Rebase hit a conflict. NOTHING was pushed, nothing is lost."
  echo "Fix the conflicted files, then run:"
  echo "    git rebase --continue && ./sync.sh"
  exit 1
fi

# 2. Commit whatever changed in the vault, now that .gitignore is current.
if [ -n "$(git status --porcelain)" ]; then
  echo
  echo "Committing these files:"
  git status --short
  echo
  git add -A
  git commit -m "Sync vault edits $(date +%Y-%m-%d)"
else
  echo "No local changes to commit."
fi

# 3. Push.
git push "$REMOTE" "$BRANCH"
echo
echo "Done. Mac and repo are in sync."
