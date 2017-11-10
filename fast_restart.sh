#!/bin/sh
set -e
python manage.py check
cat /data/blog/run/blog.pid | xargs kill -HUP

