#!/bin/sh
cp -f Gemfile* ./dev/
cp -f Gemfile* ./dev-alpine/
cp -f Gemfile* ./dev-slim/
cp -f Gemfile* ./dev-no-entrypoint/
cp -f Gemfile* ./dev-slim-no-entrypoint/
cp -f Gemfile* ./alpine/
cp -f Gemfile* ./slim/
cp -f Gemfile* ./mysql8-client/
cp -f Gemfile* ./dev-mysql8/
cd dev
cp yarn.lock ../dev-no-entrypoint/
cp yarn.lock ../dev-mysql8/
cd ..
