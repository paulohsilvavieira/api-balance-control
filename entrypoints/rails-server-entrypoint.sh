#!/bin/sh

set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

bundle exec rdbg -n --open --host 0.0.0.0 --port 9229 -c -- bin/rails s -b 0.0.0.0