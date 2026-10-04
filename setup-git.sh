#!/usr/bin/env bash
# הקמת ריפו גיט ודחיפה לגיטהאב — הרצה חד-פעמית.
#   ./setup-git.sh https://github.com/USERNAME/baba-dede.git
set -e
REMOTE="$1"
if [ -z "$REMOTE" ]; then
  echo "שימוש:  ./setup-git.sh https://github.com/<השם-שלך>/baba-dede.git"
  echo "קודם ליצור ריפו ריק ב-https://github.com/new (בלי README ובלי .gitignore)."
  exit 1
fi
cd "$(dirname "$0")"
git init
git add -A
git commit -m "אתר הזיכרון של בבה ודדה"
git branch -M main
git remote add origin "$REMOTE"
git push -u origin main
echo
echo "✓ הועלה. עכשיו: https://dashboard.render.com ← New + ← Static Site ← לבחור את הריפו."
echo "  Build Command: (ריק)   Publish Directory: ."
