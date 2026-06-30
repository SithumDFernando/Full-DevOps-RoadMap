# Quiz 08

1. What is the difference between a Deployment and a Pod?
<details><summary>Answer</summary>
A Pod is the actual running container(s). A Deployment is the manager that creates, updates, and scales the Pods based on a template.
</details>

2. If a Node in your cluster dies, what happens to the Pods running on it?
<details><summary>Answer</summary>
The Kubernetes Control Plane notices the Node is gone, and the Controller Manager schedules replacement Pods on the remaining healthy Nodes to maintain the desired state defined by the Deployment.
</details>

3. Which Service type exposes your application to the public internet using a cloud provider's infrastructure?
<details><summary>Answer</summary>
LoadBalancer.
</details>

4. Why should you define resource `requests` and `limits` on your containers?
<details><summary>Answer</summary>
`Requests` help the Scheduler place the Pod on a Node with enough capacity. `Limits` prevent a single buggy container from consuming all memory/CPU on a Node and crashing neighboring Pods.
</details>

5. What does an Ingress Controller do?
<details><summary>Answer</summary>
It reads Ingress rules and routes HTTP/HTTPS traffic entering the cluster to the appropriate internal Services based on domain name or URL path.
</details>
