# use ruby version 2.6.5
FROM ruby:2.6.5

# using japanese on rails console
ENV LANG C.UTF-8

# remove debconf warning. debconf is a configuration system for Debian packages.
ENV DEBCONF_NOWARNINGS yes

# remove apt-key warning like 'Warning: apt-key output should not be parsed (stdout is not a terminal)'
ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE yes

# make the rails server port public
EXPOSE 3000

# install package to docker container
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    vim \
    less \
    graphviz

# make and setting work directory
RUN mkdir /app
WORKDIR /app

# set home directory to work directory
ENV HOME /app

# install yarn
RUN apt-get install -y apt-transport-https && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn
