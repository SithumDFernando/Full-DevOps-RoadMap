# Exercises 06

1. **Add a Healthcheck:**
   Modify the `Dockerfile` to include a `HEALTHCHECK` instruction that curls the `/health` endpoint every 30 seconds. Rebuild and run it, then use `docker ps` to see the container's health status change from `starting` to `healthy`.
2. **Bind Mounts vs Volumes:**
   Modify the `docker-compose.yml` to use a *bind mount* for the `web` service, mapping your local `05-github-actions/sample-app` folder directly into the container at `/app`.
   Restart the compose stack, edit `app.py` locally (change the message), and refresh your browser. Notice how you don't need to rebuild the image!
