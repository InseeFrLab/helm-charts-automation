# yatai

![Version: 1.1.4](https://img.shields.io/badge/Version-1.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

Yatai lets you deploy, operate and scale Machine Learning services on Kubernetes.

**Homepage:** <https://github.com/bentoml/yatai>

## Source Code

* <https://github.com/bentoml/yatai>
* <https://github.com/bentoml/yatai-deployment>
* <https://github.com/bentoml/yatai-image-builder>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | common | 2.x |
| https://charts.bitnami.com/bitnami | postgresql | 12.2.3 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| aws.accessKeyID | string | `""` |  |
| aws.bucketName | string | `""` |  |
| aws.endpoint | string | `""` |  |
| aws.region | string | `""` |  |
| aws.secretAccessKey | string | `""` |  |
| aws.secretAccessKeyExistingSecretKey | string | `""` |  |
| aws.secretAccessKeyExistingSecretName | string | `""` |  |
| bentoImageBuildEngine | string | `"kaniko"` |  |
| configFileContent | string | `nil` |  |
| defaultDomainImage.pullPolicy | string | `"IfNotPresent"` |  |
| defaultDomainImage.repository | string | `"quay.io/bentoml/yatai-default-domain"` |  |
| defaultDomainImage.tag | string | `"0.0.2"` |  |
| disableAutomateBentoImageBuilder | bool | `false` |  |
| doNotTrack | bool | `true` |  |
| dockerRegistry.awsECRRegion | string | `"ap-northeast-3"` |  |
| dockerRegistry.bentoRepositoryName | string | `""` |  |
| dockerRegistry.inClusterServer | string | `""` |  |
| dockerRegistry.mail | string | `""` |  |
| dockerRegistry.password | string | `"d"` |  |
| dockerRegistry.passwordExistingSecretKey | string | `""` |  |
| dockerRegistry.passwordExistingSecretName | string | `""` |  |
| dockerRegistry.secure | bool | `true` |  |
| dockerRegistry.server | string | `"https://index.docker.io/v1/"` |  |
| dockerRegistry.useAWSECRWithIAMRole | bool | `false` |  |
| dockerRegistry.username | string | `""` |  |
| enableHostTimeZone | bool | `false` |  |
| enableRestrictedSecurityContext | bool | `false` |  |
| fullnameOverride | string | `""` |  |
| global.postgresql.auth.database | string | `"yatai"` |  |
| global.postgresql.auth.postgresPassword | string | `"changeme"` |  |
| image.yatai.pullPolicy | string | `"IfNotPresent"` |  |
| image.yatai.repository | string | `"aminehub/yatai"` |  |
| image.yatai.tag | string | `"1.1.3.v2"` |  |
| image.yataiDeployment.pullPolicy | string | `"IfNotPresent"` |  |
| image.yataiDeployment.repository | string | `"quay.io/bentoml/yatai-deployment"` |  |
| image.yataiDeployment.tag | string | `"1.1.3"` |  |
| image.yataiImageBuilder.pullPolicy | string | `"IfNotPresent"` |  |
| image.yataiImageBuilder.repository | string | `"aminehub/yatai-image-builder"` |  |
| image.yataiImageBuilder.tag | string | `"1.1.3.1"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `true` |  |
| ingress.host | string | `"example.chart.io"` |  |
| ingress.path | string | `"/"` |  |
| ingress.tls | list | `[]` |  |
| internalImages.bentoDownloader | string | `"quay.io/bentoml/bento-downloader:0.0.1"` |  |
| internalImages.buildkit | string | `"quay.io/bentoml/buildkit:master"` |  |
| internalImages.buildkitRootless | string | `"quay.io/bentoml/buildkit:master-rootless"` |  |
| internalImages.debugger | string | `"quay.io/bentoml/bento-debugger:0.0.7"` |  |
| internalImages.kaniko | string | `"gcr.io/kaniko-project/executor@sha256:23ae6ccaba2b0f599966dbc5ecf38aa4404f4cd799add224167eaf285696551a"` |  |
| internalImages.metricsTransformer | string | `"quay.io/bentoml/yatai-bento-metrics-transformer:0.0.3"` |  |
| layers.network.automaticDomainSuffixGeneration | bool | `false` |  |
| layers.network.domainSuffix | string | `""` |  |
| layers.network.ingressAnnotations | object | `{}` |  |
| layers.network.ingressClass | string | `"nginx"` |  |
| layers.network.ingressPath | string | `"/"` |  |
| layers.network.ingressPathType | string | `"ImplementationSpecific"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| postgresql.fullnameOverride | string | `"yatai-postgresql"` |  |
| postgresql.image.tag | string | `"12"` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| s3.accessKey | string | `""` |  |
| s3.accessKeyExistingSecretName | string | `""` |  |
| s3.aceessKeyExistingSecretKey | string | `"access_key"` |  |
| s3.bucketName | string | `""` |  |
| s3.endpoint | string | `""` |  |
| s3.region | string | `""` |  |
| s3.secretKey | string | `""` |  |
| s3.secretKeyExistingSecretKey | string | `"secret_key"` |  |
| s3.secretKeyExistingSecretName | string | `""` |  |
| s3.secure | bool | `true` |  |
| security.allowlist.enabled | bool | `true` |  |
| security.allowlist.ip | string | `"0.0.0.0/0"` |  |
| security.email | string | `""` |  |
| security.networkPolicy.enabled | bool | `true` |  |
| security.networkPolicy.from | list | `[]` |  |
| security.password | string | `""` |  |
| security.username | string | `""` |  |
| securityContext | object | `{}` |  |
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |
| transmissionStrategy | string | `"proxy"` |  |
| yataiDeploymentPodSecurityContext.runAsNonRoot | bool | `true` |  |
| yataiDeploymentPodSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| yataiDeploymentSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| yataiDeploymentSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
