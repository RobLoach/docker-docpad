FROM ubuntu
MAINTAINER Rob Loach <robloach@gmail.com>

# Update dependencies
RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y python-software-properties python

# Install node.js
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs

# Install DocPad
RUN npm install docpad -g
RUN echo "{\n  subscribed: false\n  subscribeTryAgain: false\n  tos: true\n  identified: true\n}" > ~/.docpad.cson
RUN docpad help

# Launch DocPad when running the container
CMD ["-"]
ENTRYPOINT ["docpad"]

# Set up the DocPad directory
RUN mkdir /docpad
WORKDIR /docpad
VOLUME ["/docpad"]
ADD . /docpad

# DocPad's default port is 9778
EXPOSE 9778
