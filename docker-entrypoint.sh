#!/bin/bash
set -e
case "$1" in
        annotate|cap|capify|cucumber|foodcritic|guard|irb|jekyll|kitchen|knife)
        command="bundle exec $@";;
        middleman|nanoc|pry|puma|rackup|rainbows|rails|rake|rspec|shotgun|sidekiq|spec)
        command="bundle exec $@";;
        spork|spring|strainer|tailor|taps|thin|thor|unicorn|unicorn_rails)
        command="bundle exec $@";;
        *)
        command="$@";;
esac
exec ${command}
