#!/usr/bin/env bash
source .env
TIME=$(LANG=C TZ=UTC date)

cd $(dirname $0)
git pull
git add -A
git commit -m "Updated kernels on $TIME"
git push
