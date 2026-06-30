# Lab 12: Setting up Prometheus and Grafana

We will run a local Prometheus and Grafana stack using Docker Compose to scrape metrics from a dummy target.

## 1. Inspect the Configuration

Look at `12-monitoring-logging/docker-compose.yml`. We are spinning up:
- **Prometheus** (Port 9090)
- **Grafana** (Port 3000)
- **Node Exporter** (Port 9100) - A tool that exposes hardware and OS metrics of the host machine.

Look at `12-monitoring-logging/prometheus/prometheus.yml`. Notice the `scrape_configs`. Prometheus is configured to scrape itself and the Node Exporter every 5 seconds.

## 2. Start the Stack

```bash
cd 12-monitoring-logging
docker compose up -d
```

## 3. Explore Prometheus

Open your browser to `http://localhost:9090`.
1. Go to **Status** -> **Targets**. You should see `prometheus` and `node-exporter` listed as `UP`.
2. Go back to the main graph page. Type `node_cpu_seconds_total` in the expression box and click **Execute**. Then click the **Graph** tab. You are looking at raw time-series data!

## 4. Explore Grafana

Open your browser to `http://localhost:3000`.
1. Login with username `admin` and password `admin`. (Skip the password change prompt).
2. Go to **Connections** -> **Data Sources**. Prometheus is already added (configured via Docker Compose).
3. Let's import a pre-made dashboard! Go to **Dashboards** -> **New** -> **Import**.
4. Type `1860` (the official Node Exporter Full dashboard ID) and click **Load**.
5. Select the `Prometheus` data source at the bottom and click **Import**.

**Expected Result:** You now have a professional dashboard showing CPU, RAM, and Disk usage of your Docker environment!

## 5. Teardown

```bash
docker compose down -v
```
