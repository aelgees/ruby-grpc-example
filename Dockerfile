FROM ruby:3.1.2-alpine

ARG APP_BASE
RUN apk add --no-cache build-base bash ca-certificates tzdata make libpq-dev git cmake \
    && mkdir -p /srv/app

WORKDIR /srv/app
COPY "./$APP_BASE" /srv/app

RUN gem install bundler \
    && bundle config set force_ruby_platform true \
    && bundle install --jobs=8
