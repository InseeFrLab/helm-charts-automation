# argilla

![Version: 1.0.3](https://img.shields.io/badge/Version-1.0.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.3.0](https://img.shields.io/badge/AppVersion-2.3.0-informational?style=flat-square)

Argilla is a data annotation and curation platform designed to streamline the process of creating, managing, and labeling datasets for machine learning and natural language processing (NLP) tasks

**Homepage:** <https://argilla.io/>

## Source Code

* <https://github.com/InseeFrLab/helm-charts-miscellaneous/tree/master/charts/argilla>
* <https://github.com/argilla-io/argilla/>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | elasticsearch | 21.3.21 |
| https://charts.bitnami.com/bitnami | postgresql | 16.0.1 |
| https://charts.bitnami.com/bitnami | redis | 20.2.0 |
| https://inseefrlab.github.io/helm-charts-interactive-services | library-chart | 1.5.25 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| argilla.auth.apikey | string | `"argilla.apikey"` |  |
| argilla.auth.password | string | `"changeme"` |  |
| argilla.auth.secretkey | string | `"changeme"` |  |
| argilla.auth.username | string | `"argilla"` |  |
| argilla.hpa.enabled | bool | `false` |  |
| argilla.hpa.maxReplicas | int | `3` |  |
| argilla.hpa.minReplicas | int | `1` |  |
| argilla.image.pullPolicy | string | `"IfNotPresent"` |  |
| argilla.image.registry | string | `"docker.io"` |  |
| argilla.image.repository | string | `"argilla/argilla-server"` |  |
| argilla.image.tag | string | `"v2.3.0"` |  |
| argilla.persistence.enabled | bool | `true` |  |
| argilla.persistence.size | string | `"5Gi"` |  |
| argilla.replicaCount | int | `1` |  |
| argilla.resources.limits.cpu | string | `"1000m"` |  |
| argilla.resources.limits.memory | string | `"2Gi"` |  |
| argilla.resources.requests.cpu | string | `"500m"` |  |
| argilla.resources.requests.memory | string | `"1Gi"` |  |
| elasticsearch.coordinating.replicaCount | int | `0` |  |
| elasticsearch.data.replicaCount | int | `0` |  |
| elasticsearch.extraEnvVars[0].name | string | `"cluster.routing.allocation.disk.threshold_enabled"` |  |
| elasticsearch.extraEnvVars[0].value | string | `"false"` |  |
| elasticsearch.extraEnvVars[1].name | string | `"xpack.security.enabled"` |  |
| elasticsearch.extraEnvVars[1].value | string | `"false"` |  |
| elasticsearch.extraEnvVars[2].name | string | `"xpack.security.transport.ssl.enabled"` |  |
| elasticsearch.extraEnvVars[2].value | string | `"false"` |  |
| elasticsearch.extraEnvVars[3].name | string | `"xpack.security.http.ssl.enabled"` |  |
| elasticsearch.extraEnvVars[3].value | string | `"false"` |  |
| elasticsearch.fullnameOverride | string | `"argilla-elasticsearch"` |  |
| elasticsearch.image.pullPolicy | string | `"IfNotPresent"` |  |
| elasticsearch.image.registry | string | `"docker.io"` |  |
| elasticsearch.image.repository | string | `"bitnami/elasticsearch"` |  |
| elasticsearch.image.tag | string | `"8.15.2-debian-12-r4"` |  |
| elasticsearch.ingest.replicaCount | int | `0` |  |
| elasticsearch.ingress.enabled | bool | `false` |  |
| elasticsearch.master.heapSize | string | `"1g"` |  |
| elasticsearch.master.masterOnly | bool | `false` |  |
| elasticsearch.master.networkPolicy.allowExternal | bool | `false` |  |
| elasticsearch.master.networkPolicy.enabled | bool | `true` |  |
| elasticsearch.master.persistence.enabled | bool | `true` |  |
| elasticsearch.master.persistence.size | string | `"5Gi"` |  |
| elasticsearch.master.replicaCount | int | `1` |  |
| elasticsearch.master.resources.limits.cpu | string | `"2000m"` |  |
| elasticsearch.master.resources.limits.memory | string | `"2Gi"` |  |
| elasticsearch.master.resources.requests.cpu | string | `"1000m"` |  |
| elasticsearch.master.resources.requests.memory | string | `"1Gi"` |  |
| elasticsearch.sysctlImage.enabled | bool | `false` |  |
| fullnameOverride | string | `"argilla"` |  |
| global.kibanaEnabled | bool | `false` |  |
| global.postgresql.auth.database | string | `"argilla"` |  |
| global.postgresql.auth.password | string | `"changeme"` |  |
| global.postgresql.auth.username | string | `"postgres"` |  |
| ingress.annotations | list | `[]` |  |
| ingress.certManagerClusterIssuer | string | `""` |  |
| ingress.enabled | bool | `true` |  |
| ingress.hostname | string | `"chart-example.local"` |  |
| ingress.ingressClassName | string | `""` |  |
| ingress.tls | bool | `true` |  |
| ingress.usecertManager | bool | `false` |  |
| postgresql.fullnameOverride | string | `"argilla-postgresql"` |  |
| postgresql.image.pullPolicy | string | `"IfNotPresent"` |  |
| postgresql.image.registry | string | `"docker.io"` |  |
| postgresql.image.repository | string | `"bitnami/postgresql"` |  |
| postgresql.image.tag | string | `"14"` |  |
| postgresql.primary.networkPolicy.allowExternal | bool | `false` |  |
| postgresql.primary.networkPolicy.enabled | bool | `true` |  |
| postgresql.primary.persistence.enabled | bool | `true` |  |
| postgresql.primary.persistence.size | string | `"20Gi"` |  |
| postgresql.primary.resources.limits.cpu | string | `"5000m"` |  |
| postgresql.primary.resources.limits.memory | string | `"20Gi"` |  |
| postgresql.primary.resources.requests.cpu | string | `"500m"` |  |
| postgresql.primary.resources.requests.memory | string | `"2Gi"` |  |
| redis.architecture | string | `"standalone"` |  |
| redis.auth.enabled | bool | `false` |  |
| redis.fullnameOverride | string | `"argilla-redis"` |  |
| redis.master.persistence.enabled | bool | `true` |  |
| redis.master.persistence.size | string | `"2Gi"` |  |
| redis.networkPolicy.allowExternal | bool | `false` |  |
| redis.networkPolicy.enabled | bool | `true` |  |
| redis.replica.replicaCount | int | `1` |  |
| route.annotations | list | `[]` |  |
| route.enabled | bool | `false` |  |
| route.hostname | string | `"chart-example.local"` |  |
| route.tls.termination | string | `"edge"` |  |
| route.wildcardPolicy | string | `"None"` |  |
| security.allowlist.enabled | bool | `false` |  |
| security.networkPolicy.enabled | bool | `false` |  |
| security.networkPolicy.from | list | `[]` |  |
| userPreferences.language | string | `"en"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
