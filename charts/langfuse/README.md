# langfuse

![Version: 1.0.5](https://img.shields.io/badge/Version-1.0.5-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 3.51.2](https://img.shields.io/badge/AppVersion-3.51.2-informational?style=flat-square)

LLM engineering platform - LLM observability, metrics, evaluations, prompt management.

**Homepage:** <https://langfuse.com/>

## Source Code

* <https://github.com/langfuse/langfuse>
* <https://github.com/langfuse/langfuse-k8s>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://inseefrlab.github.io/helm-charts-interactive-services | library-chart | 1.7.0 |
| https://langfuse.github.io/langfuse-k8s | langfuse | 1.2.5 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| discovery.enabled | bool | `true` |  |
| fullnameOverride | string | `""` |  |
| ingress.annotations | list | `[]` |  |
| ingress.certManagerClusterIssuer | string | `""` |  |
| ingress.hostname | string | `"chart-example.local"` |  |
| ingress.ingressClassName | string | `""` |  |
| ingress.tls | bool | `true` |  |
| ingress.usecertManager | bool | `false` |  |
| langfuse.clickhouse.auth.password | string | `"change-me"` |  |
| langfuse.clickhouse.deploy | bool | `true` |  |
| langfuse.clickhouse.fullnameOverride | string | `"langfuse-clickhouse"` |  |
| langfuse.langfuse.encryptionKey.secretKeyRef.key | string | `"encryption-key"` |  |
| langfuse.langfuse.encryptionKey.secretKeyRef.name | string | `"langfuse-encryption"` |  |
| langfuse.langfuse.features.experimentalFeaturesEnabled | bool | `false` | Enable experimental features |
| langfuse.langfuse.features.signUpDisabled | bool | `false` | Disable public sign up |
| langfuse.langfuse.features.telemetryEnabled | bool | `true` | Whether or not to report basic usage statistics to a centralized server. |
| langfuse.langfuse.image.pullPolicy | string | `"IfNotPresent"` |  |
| langfuse.langfuse.image.tag | string | `nil` |  |
| langfuse.langfuse.ingress.enabled | bool | `false` |  |
| langfuse.langfuse.initConfig.LANGFUSE_INIT_ORG_ID | string | `"onyxia"` |  |
| langfuse.langfuse.initConfig.LANGFUSE_INIT_USER_EMAIL | string | `"langfuse@onyxia.fr"` |  |
| langfuse.langfuse.initConfig.LANGFUSE_INIT_USER_NAME | string | `"langfuse"` |  |
| langfuse.langfuse.initConfig.LANGFUSE_INIT_USER_PASSWORD | string | `"changeme"` |  |
| langfuse.langfuse.logging.format | string | `"text"` | Set the log format for the application (text or json) |
| langfuse.langfuse.logging.level | string | `"info"` | Set the log level for the application (trace, debug, info, warn, error, fatal) |
| langfuse.langfuse.nextauth.secret.value | string | `"change-me"` |  |
| langfuse.langfuse.replicas | int | `1` |  |
| langfuse.langfuse.resources | object | `{}` | Resources for all langfuse deployments. Can be overridden by the individual deployments |
| langfuse.langfuse.salt.value | string | `"change-this-salt"` |  |
| langfuse.langfuse.web.hpa.enabled | bool | `false` |  |
| langfuse.langfuse.web.keda.enabled | bool | `false` |  |
| langfuse.langfuse.web.replicas | string | `nil` |  |
| langfuse.langfuse.web.resources | object | `{}` |  |
| langfuse.langfuse.web.vpa.enabled | bool | `false` |  |
| langfuse.langfuse.worker.hpa.enabled | bool | `false` |  |
| langfuse.langfuse.worker.keda.enabled | bool | `false` |  |
| langfuse.langfuse.worker.replicas | string | `nil` |  |
| langfuse.langfuse.worker.resources | object | `{}` |  |
| langfuse.langfuse.worker.vpa.enabled | bool | `false` |  |
| langfuse.postgresql.auth.password | string | `"change-me"` |  |
| langfuse.postgresql.deploy | bool | `true` |  |
| langfuse.postgresql.fullnameOverride | string | `"langfuse-postgresql"` |  |
| langfuse.postgresql.primary.persistentVolumeClaimRetentionPolicy.enabled | bool | `false` |  |
| langfuse.postgresql.primary.persistentVolumeClaimRetentionPolicy.whenDeleted | string | `"Delete"` |  |
| langfuse.postgresql.primary.persistentVolumeClaimRetentionPolicy.whenScaled | string | `"Retain"` |  |
| langfuse.redis.auth.password | string | `"change-me"` |  |
| langfuse.redis.deploy | bool | `true` |  |
| langfuse.redis.fullnameOverride | string | `"langfuse-redis"` |  |
| langfuse.redis.primary.persistentVolumeClaimRetentionPolicy.enabled | bool | `false` |  |
| langfuse.redis.primary.persistentVolumeClaimRetentionPolicy.whenDeleted | string | `"Delete"` |  |
| langfuse.redis.primary.persistentVolumeClaimRetentionPolicy.whenScaled | string | `"Retain"` |  |
| langfuse.s3.auth.rootPassword | string | `"change-me"` |  |
| langfuse.s3.deploy | bool | `true` |  |
| langfuse.s3.fullnameOverride | string | `"langfuse-s3"` |  |
| nameOverride | string | `""` |  |
| route.annotations | list | `[]` |  |
| route.enabled | bool | `false` |  |
| route.hostname | string | `"chart-example.local"` |  |
| route.tls.termination | string | `"edge"` |  |
| route.wildcardPolicy | string | `"None"` |  |
| savePersistentVolume | bool | `false` |  |
| security.allowlist.enabled | bool | `false` |  |
| security.networkPolicy.enabled | bool | `false` |  |
| security.networkPolicy.from | list | `[]` |  |
| userPreferences.language | string | `"en"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
