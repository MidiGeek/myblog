#!/bin/sh
set -e
python manage.py check
python manage.py collectstatic --noinput
cat /data/blog/run/blog.pid | xargs kill -HUP
