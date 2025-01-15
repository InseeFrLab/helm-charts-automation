{{/*
Expand the name of the chart.
*/}}
{{- define "metaflow-service.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "metaflow.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{- define "metaflow-service.fullname" -}}
{{ include "metaflow.fullname" . }}-metadata-service
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "metaflow-service.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "metaflow-service.labels" -}}
helm.sh/chart: {{ include "metaflow-service.chart" . }}
{{ include "metaflow-service.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "metaflow-service.selectorLabels" -}}
app.kubernetes.io/name: {{ include "metaflow-service.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "metaflow-service.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "metaflow-service.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{- define "metaflow-service.metadatadbEnvVars" -}}
- name: MF_METADATA_DB_NAME
  value: {{ .Values.global.postgresql.auth.database | quote }}
- name: MF_METADATA_DB_PORT
  value: {{ .Values.metadatadb.port | quote }}
- name: MF_METADATA_DB_PSWD
  value: {{ .Values.global.postgresql.auth.password | quote }}
- name: METAFLOW_SERVICE
  value: "http://localhost:8080"
- name: MF_METADATA_DB_USER
  value: {{ .Values.global.postgresql.auth.username | quote }}
- name: MF_METADATA_DB_HOST
  value: "metaflow-db"
{{- end -}}


{{/*
Expand the name of the chart.
*/}}
{{- define "metaflow-ui.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "metaflow-ui.name-static" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}-static
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "metaflow-ui.fullname" -}}
{{ include "metaflow.fullname" . }}-backend
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "metaflow-ui.fullname-static" -}}
{{ include "metaflow.fullname" . }}-static
{{- end }}


{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "metaflow-ui.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "metaflow-ui.labels" -}}
helm.sh/chart: {{ include "metaflow-ui.chart" . }}
{{ include "metaflow-ui.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "metaflow-ui.labelsStatic" -}}
helm.sh/chart: {{ include "metaflow-ui.chart" . }}
{{ include "metaflow-ui.selectorLabelsStatic" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "metaflow-ui.selectorLabels" -}}
app.kubernetes.io/name: {{ include "metaflow-ui.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "metaflow-ui.selectorLabelsStatic" -}}
app.kubernetes.io/name: {{ include "metaflow-ui.name-static" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "metaflow-ui.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "metaflow-ui.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{- define "metaflow-ui.metadatadbEnvVars" -}}
- name: MF_METADATA_DB_NAME
  value: {{ .Values.global.postgresql.auth.database | quote }}
- name: MF_METADATA_DB_PORT
  value: {{ .Values.metadatadb.port | quote }}
- name: MF_METADATA_DB_PSWD
  value: {{ .Values.global.postgresql.auth.password | quote }}
- name: MF_METADATA_DB_USER
  value: {{ .Values.global.postgresql.auth.username | quote }}
- name: MF_METADATA_DB_HOST
  value: "metaflow-db"
- name: METAFLOW_SERVICE
  value: "http://localhost:8083/api"
{{- end -}}


{{- define "metaflow-ui.capabilities.kubeVersion" -}}
{{- if .Values.global }}
    {{- if .Values.global.kubeVersion }}
    {{- .Values.global.kubeVersion -}}
    {{- else }}
    {{- default .Capabilities.KubeVersion.Version .Values.kubeVersion -}}
    {{- end -}}
{{- else }}
{{- default .Capabilities.KubeVersion.Version .Values.kubeVersion -}}
{{- end -}}
{{- end -}}

{{- define "metaflow-ui.ingress.supportsIngressClassname" -}}
{{- if semverCompare "<1.18-0" (include "metaflow-ui.capabilities.kubeVersion" .) -}}
{{- print "false" -}}
{{- else -}}
{{- print "true" -}}
{{- end -}}
{{- end -}}

{{- define "metaflow-ui.ingress.annotations" -}}
{{- with .Values.ingress.annotations }}
    {{- toYaml . }}
{{- end }}
{{- if .Values.security.allowlist.enabled }}
nginx.ingress.kubernetes.io/whitelist-source-range: {{ .Values.security.allowlist.ip }}
{{- end }}
{{- end }}

{{- define "metaflow-ui.ingress.hostname" -}}
{{- if .Values.ingress.generate }}
{{- printf "%s" .Values.ingress.userHostname }}
{{- else }}
{{- printf "%s" .Values.ingress.hostname }}
{{- end }}
{{- end }}
