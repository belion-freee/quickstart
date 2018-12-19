# use ruby version 2.5.3
FROM ruby:2.5.3

# using japanese on rails console
ENV LANG C.UTF-8

# remove warn
ENV DEBCONF_NOWARNINGS yes
ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE yes

# install package to docker container
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

# install yarn
RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
apt-get update && apt-get install -y yarn

# install nodejs
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - && \
apt-get install nodejs

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
