# Exercises 12

1. **Add the Sample App to Prometheus:**
   Go back to the Python app in `05-github-actions/sample-app/app.py`. Install the `prometheus_client` pip package. Add a metric to track how many times the `/` endpoint is hit.
   Modify `12-monitoring-logging/docker-compose.yml` to include your Python app container.
   Modify `prometheus.yml` to scrape your Python app on port 8080.
   Restart the compose stack and try to graph your custom metric in Grafana!
