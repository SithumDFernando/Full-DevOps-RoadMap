# Quiz 09

1. What command do you use to see what Helm is going to install before actually installing it?
<details><summary>Answer</summary>
`helm install --dry-run --debug my-release ./my-chart` or `helm template ./my-chart`
</details>

2. Where does Helm look for default configuration variables?
<details><summary>Answer</summary>
In the `values.yaml` file at the root of the chart.
</details>

3. What is a Helm Release?
<details><summary>Answer</summary>
A Release is an instance of a chart running in a Kubernetes cluster. You can install the same chart multiple times in the same cluster, and each one will be its own Release with a unique name.
</details>
