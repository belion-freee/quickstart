# use ruby version 2.5.3
FROM ruby:2.5.3

# using japanese on rails console
ENV LANG C.UTF-8

# install package to docker container
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs yarn

# setting work directory
RUN mkdir /app
WORKDIR /app

# setting environment value
ENV PATH=$PATH:/bundle/bin
ENV HOME /app

# executing bundle install
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

# install rails
RUN bundle install
