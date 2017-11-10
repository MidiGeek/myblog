#!/bin/sh
set -e
python manage.py check
python manage.py collectstatic --noinput
cat /data/blog/run/weike.pid | xargs kill -HUP
