FROM ruby:3.3.0

WORKDIR /app

COPY ./src /app

RUN apt-get update && \
    apt-get install -y nodejs

RUN bundle config --local set path 'vendor/bundle' \
  && bundle install
