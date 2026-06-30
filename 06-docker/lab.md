# Lab 06: Containerizing the Sample App

We will containerize the Python app we used in Module 05.
*Note: Execute these commands from the root of the repo, or adjust paths accordingly.*

## 1. Single-stage Build

Review `06-docker/Dockerfile.singlestage`. It's a standard, simple Dockerfile.
Build it:
```bash
docker build -t sample-app:single -f 06-docker/Dockerfile.singlestage 05-github-actions/sample-app
```
Check its size:
```bash
docker images | grep sample-app
```
**Expected Result:** You see the `sample-app:single` image, likely >150MB.

## 2. Multi-stage Build

Review `06-docker/Dockerfile`. It uses a builder stage to install dependencies, then copies them to a fresh, minimal runtime stage.
Build it:
```bash
docker build -t sample-app:multi -f 06-docker/Dockerfile 05-github-actions/sample-app
```
Check its size:
```bash
docker images | grep sample-app
```
**Expected Result:** The `sample-app:multi` image should be slightly smaller and more secure (no build tools in final image).

## 3. Run the Container

Run the multi-stage image, mapping port 8080 on your host to 8080 in the container:
```bash
docker run -d -p 8080:8080 --name my-app sample-app:multi
```
Verify it works:
```bash
curl http://localhost:8080
```
**Expected Result:** `{"message": "Hello, DevOps!"}`

Stop and remove it:
```bash
docker stop my-app
docker rm my-app
```

## 4. Docker Compose

Review `06-docker/docker-compose.yml`. It defines our app and a Redis cache (just as an example of a multi-service stack).
Run the stack:
```bash
cd 06-docker
docker compose up -d
```
Verify both are running:
```bash
docker compose ps
curl http://localhost:8080
```
Tear it down:
```bash
docker compose down -v
```
**Expected Result:** Containers, networks, and volumes are cleanly removed.
