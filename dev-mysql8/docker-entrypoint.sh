#!/bin/bash
# Note: due to gitlab autodevops not setting args to any value, fallback to bundle exec rails server as default
set -e
echo "Rails entrypoint running: $1"
case "$1" in
        bundle*)
        command="$1";;
        /bin/bash|/bin/sh|bash|sh)
        command="$1";;
        annotate|cap|capify|cucumber|foodcritic|guard|irb|jekyll|kitchen|knife)
        command="bundle exec $@";;
        middleman|nanoc|pry|puma|rackup|rainbows|rails|rake|rspec|shotgun|sidekiq|spec)
        command="bundle exec $@";;
        spork|spring|strainer|tailor|taps|thin|thor|unicorn|unicorn_rails|webpacker|yarn)
        command="bundle exec $@";;
        ./bin/webpack-dev-server|bin/webpack-dev-server|./bin/webpack|bin/webpack)
        command="bundle exec $@";;
        "")
        command="bundle exec rails server";;
        *)
        command="bundle exec rails server";;
esac
echo "Full command $command"
exec ${command}
