# Exercises 09

1. **Environment Values Files:**
   Create a new file `09-helm/charts/sample-app/values-dev.yaml`. Inside it, override the `replicaCount` to `1` and change the `config.appEnv` to `"development"`.
   Run an upgrade using this specific file:
   `helm upgrade my-app ./charts/sample-app -f ./charts/sample-app/values-dev.yaml`
2. **Add HPA Templating:**
   Open `09-helm/charts/sample-app/templates/hpa.yaml`. It is currently blank. Look at the `hpa.yaml` from Module 08 and try to templatize it. Use `{{ include "sample-app.fullname" . }}` for names, and add HPA settings to your `values.yaml` to make it configurable.
