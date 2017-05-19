Meta
=====

These files are used in other Ruby For Good projects, but needed a place to live. Here's what they are:

`projects.json`: the data about our projects to power `projects.html` on [rubyforgood.org]().

`tracked.json`: the names and repo addresses of all of our projects.

## Running things

Currently, this repo is updated by using a shell script, as below.  Some point soon, this will
be automated as a cron job.

You need to add a file called `script/creds.py` before proceeding.  You need to generate
a Github personal API token by the web site.  Then emebed it in the file like this:

```
GITHUB_TOKEN = "4598734509837459283745"
```

This file will be ignored by Git so you can't check it in.  Then run the following script:

```
#! /bin/sh

cd /path/to/repo
git pull
python scripts/generate_json.py
git add .
git commit --allow-empty -m "auto-update for $(date +'%F at %R')"
git push origin master
```
