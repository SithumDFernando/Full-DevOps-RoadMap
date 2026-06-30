# Module 12: Monitoring and Logging

You built it, you deployed it... but is it actually working? If your application crashes in the middle of the night, how do you know? This is where Observability (O11y) comes in.

## 👁️ The Three Pillars of Observability

1. **Metrics:** Quantitative data (numbers). E.g., CPU usage is 85%, memory is 2GB, API latency is 150ms. (Tools: Prometheus, Datadog).
2. **Logs:** Immutable, timestamped records of discrete events. E.g., `[ERROR] Database connection timeout`. (Tools: ELK Stack, Grafana Loki, Splunk).
3. **Traces:** A representation of a series of causally related distributed events that encode the end-to-end request flow through a distributed system. (Tools: Jaeger, OpenTelemetry).

## 📈 Prometheus & Grafana

This is the standard open-source stack for metrics.
- **Prometheus:** A time-series database. It "scrapes" (pulls) metrics from your applications via HTTP endpoints (usually `/metrics`).
- **Grafana:** A visualization tool. It queries Prometheus and draws beautiful dashboards.

## 🚨 Alerting

Metrics are useless if no one looks at them. Alerting systems (like Prometheus Alertmanager or PagerDuty) send notifications (Slack, Email, SMS) when a metric crosses a threshold (e.g., Error rate > 5% for 5 minutes).

---
**Next Module:** [Module 13: Security & DevSecOps](../13-security-devsecops)

**Further Reading:**
- [Prometheus Documentation](https://prometheus.io/docs/introduction/overview/)
- [Grafana Dashboards](https://grafana.com/grafana/dashboards/)
