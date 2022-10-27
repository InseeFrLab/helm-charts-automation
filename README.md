# Helm charts Automation

This collection of Helm Charts is tailored for datascientists !
It is primarly designed to work with [Onyxia](https://github.com/inseefrlab/onyxia) but also works as a standalone Helm repository.  
You should use official helm repository of each opensource software if you don't use onyxia.

:warning: If you intend to use `argo-cd` or `argo-workflows` from this repo, you first have to install and upgrade CRDs manually as it has been disabled here (installing CRDs multiple times fails with error `Error: rendered manifests contain a resource that already exists. Unable to continue with install: CustomResourceDefinition "applications.argoproj.io" in namespace "" exists and cannot be imported into the current release: invalid ownership metadata; label validation error: missing key "app.kubernetes.io/managed-by": must be set to "Helm"; annotation validation error: missing key "meta.helm.sh/release-name": must be set to "argo-cd-446848"; annotation validation error: missing key "meta.helm.sh/release-namespace": must be set to "user-xxx"`). See https://github.com/argoproj/argo-helm/tree/main/charts/argo-cd#custom-resource-definitions for more details. :warning:

To use the repo on helm (version 3+) :

```
helm repo add inseefrlab-automation https://inseefrlab.github.io/helm-charts-automation
```

The repo is also browsable directly https://inseefrlab.github.io/helm-charts-automation/index.yaml

Contributions are welcome, feel free to open issues or submit pull requests :)
