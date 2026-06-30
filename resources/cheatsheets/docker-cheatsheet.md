# Docker & Compose Cheatsheet

### Docker Basics (Images & Containers)
- `docker version`: Show Docker version info.
- `docker info`: Display system-wide information.

### Working with Images
- `docker images`: List local images.
- `docker pull <image>:<tag>`: Download an image from a registry.
- `docker build -t <image-name>:<tag> .`: Build an image from a Dockerfile in the current directory.
- `docker push <image>:<tag>`: Push an image to a registry.
- `docker rmi <image>`: Remove an image.
- `docker image prune`: Remove unused/dangling images.

### Working with Containers
- `docker ps`: List running containers.
- `docker ps -a`: List all containers (running and stopped).
- `docker run -d -p <host-port>:<container-port> --name <name> <image>`: Run a container in the background, mapping ports and assigning a name.
- `docker stop <container>`: Stop a running container.
- `docker start <container>`: Start a stopped container.
- `docker restart <container>`: Restart a container.
- `docker rm <container>`: Remove a stopped container.
- `docker exec -it <container> /bin/sh` (or `/bin/bash`): Open an interactive shell inside a running container.
- `docker logs <container>`: Fetch the logs of a container.
- `docker logs -f <container>`: Follow log output.

### Volumes & Networks
- `docker volume ls`: List volumes.
- `docker volume create <volume-name>`: Create a new volume.
- `docker volume rm <volume-name>`: Remove a volume.
- `docker network ls`: List networks.
- `docker network create <network-name>`: Create a new network.
- `docker network rm <network-name>`: Remove a network.

### Docker Compose
- `docker compose up`: Create and start containers defined in `docker-compose.yml`.
- `docker compose up -d`: Run containers in the background (detached mode).
- `docker compose down`: Stop and remove containers, networks, images, and volumes created by `up`.
- `docker compose down -v`: Also remove named volumes.
- `docker compose ps`: List containers in the compose project.
- `docker compose logs -f`: View live logs from all services in the compose project.
- `docker compose build`: Rebuild the images for the services.
