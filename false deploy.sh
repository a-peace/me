#!/usr/bin/env sh

# остановить публикацию при ошибках
set -e

git init
git add -A
git commit -m 'update'

git push -f git@github.com:a-peace/me.git main