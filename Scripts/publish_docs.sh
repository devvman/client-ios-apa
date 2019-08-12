#!/bin/bash

./scripts/build_docs.sh

git add .
git commit -am "auto-update docs"
git push origin heroku-pages
git status

git push heroku heroku-pages:master
