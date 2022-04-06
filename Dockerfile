# Set up envinorment - `alpine` is platform environment. 
FROM node:16-alpine
# Make a folder named app, and into it. Same as `mkdir /app && cd /app`
WORKDIR /app
# Copy all files of docker-node folder to the new app folder above.
COPY . .
# Run this command when building the image.
RUN npm install
# A list of commands, spread by a space
CMD ["npm", "start"]

# 1. Build an image named  `docker-node`, tag: `v1`.
# `docker build -t docker-node:v1 .`
# `-t option`: name for iamge name. (optional) 
# `.`: build image with the current context (current directory).

# *. Show all images: `docker images`
# *. Delete an images `docker rmi <image id>`

# 2. Run the project from the docker image
# create and file named: `docker-compose.yml`
# allow us run many container at the same time. Monitoring easily,
 

