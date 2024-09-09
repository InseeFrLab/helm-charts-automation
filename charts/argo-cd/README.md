# argo-cd

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1](https://img.shields.io/badge/AppVersion-1-informational?style=flat-square)

Argo CD is a declarative, GitOps continuous delivery tool for Kubernetes.

**Homepage:** <https://argo-cd.readthedocs.io/en/stable/>

## Source Code

* <https://github.com/InseeFrLab/helm-charts-automation/blob/master/charts/argo-cd>
* <https://github.com/argoproj/argo-helm/tree/master/charts/argo-cd>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://argoproj.github.io/argo-helm | argo-cd | 6.11.1 |
| https://inseefrlab.github.io/helm-charts-interactive-services | library-chart | 1.5.21 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| apiserver | string | `"https://kubernetes.default.svc"` |  |
| argo-cd.applicationSet.replicas | int | `0` |  |
| argo-cd.configs.secret.createSecret | bool | `false` |  |
| argo-cd.controller.args.appResyncPeriod | string | `"180"` |  |
| argo-cd.controller.args.operationProcessors | string | `"10"` |  |
| argo-cd.controller.args.repoServerTimeoutSeconds | string | `"60"` |  |
| argo-cd.controller.args.selfHealTimeout | string | `"5"` |  |
| argo-cd.controller.args.statusProcessors | string | `"20"` |  |
| argo-cd.controller.clusterAdminAccess.enabled | bool | `false` |  |
| argo-cd.controller.clusterRoleRules.enabled | bool | `false` |  |
| argo-cd.controller.clusterRoleRules.rules | list | `[]` |  |
| argo-cd.controller.containerPort | int | `8082` |  |
| argo-cd.controller.enableStatefulSet | bool | `true` |  |
| argo-cd.controller.env[0].name | string | `"KUBERNETES_NAMESPACE"` |  |
| argo-cd.controller.env[0].valueFrom.fieldRef.apiVersion | string | `"v1"` |  |
| argo-cd.controller.env[0].valueFrom.fieldRef.fieldPath | string | `"metadata.namespace"` |  |
| argo-cd.controller.extraArgs[0] | string | `"--namespace"` |  |
| argo-cd.controller.extraArgs[1] | string | `"$(KUBERNETES_NAMESPACE)"` |  |
| argo-cd.controller.image.imagePullPolicy | string | `nil` |  |
| argo-cd.controller.image.repository | string | `nil` |  |
| argo-cd.controller.image.tag | string | `nil` |  |
| argo-cd.controller.logFormat | string | `"text"` |  |
| argo-cd.controller.logLevel | string | `"info"` |  |
| argo-cd.controller.name | string | `"application-controller"` |  |
| argo-cd.controller.replicas | int | `1` |  |
| argo-cd.controller.resources | object | `{}` |  |
| argo-cd.controller.service.port | int | `443` |  |
| argo-cd.controller.service.portName | string | `"https-controller"` |  |
| argo-cd.controller.serviceAccount.automountServiceAccountToken | bool | `true` |  |
| argo-cd.controller.serviceAccount.create | bool | `true` |  |
| argo-cd.controller.serviceAccount.name | string | `"argocd-application-controller"` |  |
| argo-cd.crds.install | bool | `false` |  |
| argo-cd.createAggregateRoles | bool | `false` |  |
| argo-cd.createClusterRoles | bool | `false` |  |
| argo-cd.fullnameOverride | string | `"argocd"` |  |
| argo-cd.notifications.enabled | bool | `false` |  |
| argo-cd.openshift.enabled | bool | `false` |  |
| argo-cd.redis-ha.enabled | bool | `false` |  |
| argo-cd.redis.enabled | bool | `true` |  |
| argo-cd.repoServer.clusterAdminAccess.enabled | bool | `false` |  |
| argo-cd.repoServer.clusterRoleRules.enabled | bool | `false` |  |
| argo-cd.repoServer.name | string | `"repo-server"` |  |
| argo-cd.server.clusterAdminAccess.enabled | bool | `false` |  |
| argo-cd.server.containerPort | int | `8080` |  |
| argo-cd.server.env[0].name | string | `"KUBERNETES_NAMESPACE"` |  |
| argo-cd.server.env[0].valueFrom.fieldRef.apiVersion | string | `"v1"` |  |
| argo-cd.server.env[0].valueFrom.fieldRef.fieldPath | string | `"metadata.namespace"` |  |
| argo-cd.server.extraArgs[0] | string | `"--namespace"` |  |
| argo-cd.server.extraArgs[1] | string | `"$(KUBERNETES_NAMESPACE)"` |  |
| argo-cd.server.ingress.enabled | bool | `false` |  |
| argo-cd.server.logFormat | string | `"text"` |  |
| argo-cd.server.logLevel | string | `"info"` |  |
| argo-cd.server.name | string | `"server"` |  |
| argo-cd.server.replicas | int | `1` |  |
| argo-cd.server.serviceAccount.automountServiceAccountToken | bool | `true` |  |
| argo-cd.server.serviceAccount.create | bool | `true` |  |
| argo-cd.server.serviceAccount.name | string | `"argocd-server"` |  |
| fullnameOverride | string | `"argocd"` |  |
| global.networkPolicy.create | bool | `false` |  |
| global.networkPolicy.defaultDenyIngress | bool | `false` |  |
| ingress.annotations."nginx.ingress.kubernetes.io/backend-protocol" | string | `"HTTPS"` |  |
| ingress.enabled | bool | `true` |  |
| ingress.hostname | string | `"chart-example.local"` |  |
| ingress.ingressClassName | string | `""` |  |
| ingress.tls | bool | `true` |  |
| nameOverride | string | `""` |  |
| route.annotations | list | `[]` |  |
| route.enabled | bool | `false` |  |
| route.hostname | string | `"chart-example.local"` |  |
| route.tls.termination | string | `"edge"` |  |
| route.wildcardPolicy | string | `"None"` |  |
| secret.createSecret | bool | `true` |  |
| secret.password | string | `"changeme"` |  |
| security.allowlist.enabled | bool | `true` |  |
| security.allowlist.ip | string | `"0.0.0.0/0"` |  |
| security.networkPolicy.enabled | bool | `true` |  |
| security.networkPolicy.from | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
