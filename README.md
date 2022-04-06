# Setup

## Setup `docker`: https://docs.docker.com/engine/install/ubuntu/

## Setup `docker-compose`: https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-ubuntu-16-04

# 1. Build an image named `docker-node`, tag: `v1`.

- `docker build -t docker-node:v1 .`
- `-t option`: name for image name. (optional)
- `.`: build image with the current context (current directory).

- Show all images:
  `docker images`
- Delete an images:
  `docker rmi <image id>`
- Delete all images:
  `docker rmi -f $(docker images -aq)`

# 2. Run the project from the docker image

create and file named: `docker-compose.yml`
allow us run many container at the same time. Monitoring easily,

# 3. Run container

- Start container:
  `docker-compose up`
- Stop container:
  `docker-compose down`

# Other commands:

- View detail container:
  `docker-compose exec app sh`
- View platform environment in container:
  `cat /ect/os-release`
- \*Should use `alpine`

- Run docker-compose in the background:
  `docker-compose up -d`
- See logs:
  `docker-compose logs` (current time)
  `docker-compose logs -f` (real time)
