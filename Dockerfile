FROM node:18.18.0 as base
WORKDIR /app

# By default, just keep the container running
CMD ["tail", "-f", "/dev/null"]
