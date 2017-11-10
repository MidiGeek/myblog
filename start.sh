#!/bin/sh
export LD_LIBRARY_PATH=/usr/lib
gunicorn -b $1:8000 blogproject.wsgi --env DJANGO_SETTINGS_MODULE=blogproject.online --pid /data/blog/run/blog.pid -w 24 --threads 10 --max-requests 3000

