#! /bin/sh

cd /path/to/repo
git pull
pip install requirements.txt
python scripts/generate_json.py
git add .
git commit --allow-empty -m "auto-update for $(date +'%F at %R')"
git push origin master
