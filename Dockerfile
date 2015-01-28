FROM iojs/iojs

MAINTAINER ColCh

# Source
ADD . /srv

# Dependencies to run node
RUN apt-get update && apt-get install -qq --yes curl wget git imagemagick

# Dependencies to run app
RUN npm install --global grunt-cli forever bower yo webpack webpack-dev-server nodemon

# Start the app
WORKDIR /srv
CMD bash
