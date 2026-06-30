# Quiz 12

1. What is the difference between Pull and Push based metrics?
<details><summary>Answer</summary>
Pull (Prometheus): The monitoring server reaches out to the applications to scrape data. Push (Datadog/StatsD): The application actively sends its metrics to a central monitoring server.
</details>

2. Why shouldn't you alert on CPU usage hitting 90%?
<details><summary>Answer</summary>
Because it's a symptom, not a cause. High CPU is fine if the application is still responding quickly. You should alert on user-facing symptoms (e.g., API latency > 1s, or Error Rate > 5%). This is known as Symptom-Based Alerting.
</details>

3. What is a Time-Series Database (TSDB)?
<details><summary>Answer</summary>
A database specifically optimized for storing data indexed by time (e.g., tracking a metric's value every 5 seconds over a month). Prometheus is a TSDB.
</details>
