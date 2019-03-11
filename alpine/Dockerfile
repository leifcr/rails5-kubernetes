FROM ruby:2.6-alpine
LABEL maintainer='leifcr@gmail.com'
LABEL description='Image for running rails 5 apps on kubernetes, with common gems preinstalled. Based on ruby:2.6-alpine image'

ENV APP_HOME /app
ENV LANG C.UTF-8

# For stretch:
# RUN  apt-get install -y apt-transport-https ca-certificates gnupg wget --no-install-recommends && \
RUN apk add --update --no-cache \
  mariadb-dev \
  mariadb-client \
  libxml2-dev \
  libxslt-dev \
  build-base \
  ghostscript \
  wget \
  curl \
  nodejs \
  shadow \
  tzdata \
  git \
  yarn && \
  rm -rf /var/cache/apk/* && \
  set -x && \
  mkdir $APP_HOME && \
  addgroup -g 1000 rails && \
  adduser -D -s /bin/sh -u 1000 -h /home/rails -G rails rails && \
  chown rails:rails /app

# Copy docker entry point
COPY docker-entrypoint.sh /usr/local/bin/

# Make entrypoint executable when building on Windows
# And backwards compatible entrypoint
RUN chmod +x /usr/local/bin/docker-entrypoint.sh && ln -s /usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh

# Continue as rails user
# USER rails

# Set workdir to /app, so COPY, ADD, RUN and ENTRYPOINT is run within folder
WORKDIR $APP_HOME

# Add Gemfile
COPY Gemfile Gemfile.lock ./
# Install gems
RUN gem install bundler --version 1.17.3 && bundle install --jobs 20 --retry 5

# Set entry point to bundle exec, as all cmd's with rails should be prepended
ENTRYPOINT ["docker-entrypoint.sh"]
