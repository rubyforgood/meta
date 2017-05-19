Meta
=====

These files are used in other Code for DC projects, but needed a place to live. Here's what they are:

`projects.json`: the data about our projects to power `projects.html` on [codefordc.org]().

`tracked.json`: the names and repo addresses of all of our projects.

## Running things

Currently, this repo is updated as a cron job with the following shell script:

```
#! /bin/sh

cd /path/to/repo
git pull
python scripts/civic_json.py
git add .
git commit --allow-empty -m "auto-update for $(date +'%F at %R')"
git push origin master
```
