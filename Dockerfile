FROM node:latest
MAINTAINER Brandfolder, Inc. <developers@brandfolder.com>

# Set up ENV
ENV BRANDFOLDER_API_ENDPOINT https://api.brandfolder.com/v2
ENV NODE_ENV production
ENV PORT 5000

# Expose the PORT
EXPOSE $PORT

# Install Packages
ADD package.json package.json
ADD Makefile Makefile
RUN make deps

# Install App
ADD . /

# Start the app
CMD make server
