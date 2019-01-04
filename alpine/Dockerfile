FROM ruby:2.6-alpine
MAINTAINER leifcr@gmail.com

ENV APP_HOME /app
ENV LANG C.UTF-8

# For stretch:
# RUN  apt-get install -y apt-transport-https ca-certificates gnupg wget --no-install-recommends && \
RUN apk add --no-cache --virtual \
       build-base \
       libxml2-dev \
       libxslt-dev \
       ghostscript \
       mariadb-client \
       mariadb-dev \
       wget \
       curl \
       nodejs \
       yarn

RUN set -x && \
    mkdir $APP_HOME && \
    groupadd -g 1000 rails && \
    useradd -s /bin/bash -m -d /home/rails -g rails rails && \
    chown rails:rails /app &&

# Copy docker entry point
COPY docker-entrypoint.sh /usr/local/bin/

# Make entrypoint executable when building on Windows
# And backwards compatible entrypoint
RUN chmod +x /usr/local/bin/docker-entrypoint.sh && ln -s /usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh

# Continue as rails user
USER rails

# Set workdir to /app, so COPY, ADD, RUN and ENTRYPOINT is run within folder
WORKDIR $APP_HOME

# Add Gemfile
COPY Gemfile Gemfile.lock package.json yarn.lock ./
# Install gems
RUN gem install bundler && bundle install --jobs 20 --retry 5

# Set entry point to bundle exec, as all cmd's with rails should be prepended
ENTRYPOINT ["docker-entrypoint.sh"]
