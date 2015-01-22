FROM ubuntu:utopic

MAINTAINER ColCh

# Source
ADD . /srv

# Dependencies to run node
RUN apt-get update && apt-get install -qq --yes curl wget git imagemagick nodejs npm
RUN npm install --global n && n latest

# Dependencies to run app
RUN npm install --global grunt-cli forever bower yo webpack webpack-dev-server nodemon

# Start the app
WORKDIR /srv
CMD bash
