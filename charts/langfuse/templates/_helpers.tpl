


{{/*
Return PostgreSQL hostname
*/}}
{{- define "langfuse.postgresql.hostname" -}}
{{- if .Values.postgresql.host }}
{{- .Values.postgresql.host }}
{{- else if .Values.postgresql.deploy }}
{{- include "postgresql.v1.primary.fullname" .Subcharts.postgresql -}}
{{- end }}
{{- end }}

{{/*
Return ClickHouse hostname (without protocol)
*/}}
{{- define "langfuse.clickhouse.hostname" -}}
{{- if .Values.clickhouse.host }}
{{- if hasPrefix "http://" .Values.clickhouse.host -}}
{{- trimPrefix "http://" .Values.clickhouse.host -}}
{{- else if hasPrefix "https://" .Values.clickhouse.host -}}
{{- trimPrefix "https://" .Values.clickhouse.host -}}
{{- else -}}
{{- .Values.clickhouse.host -}}
{{- end -}}
{{- else if .Values.clickhouse.deploy }}
{{- include "common.names.fullname" .Subcharts.clickhouse -}}
{{- else }}
{{- fail "clickhouse.host must be set when clickhouse.deploy is false" }}
{{- end }}
{{- end }}

{{/*
Return Redis hostname
*/}}
{{- define "langfuse.redis.hostname" -}}
{{- if .Values.redis.host }}
{{- .Values.redis.host }}
{{- else if .Values.redis.deploy }}
{{- printf "%s-primary" (include "common.names.fullname" .Subcharts.redis ) }}
{{- else }}
{{- fail "redis.host must be set when redis.deploy is false" }}
{{- end }}
{{- end }}

{{/*
Return S3/MinIO endpoint -- if not set uses auto-discovery
*/}}
{{- define "langfuse.s3.endpoint" -}}
{{- if or .Values.s3.eventUpload.endpoint }}
{{- .Values.s3.eventUpload.endpoint }}
{{- else if .Values.s3.endpoint }}
{{- .Values.s3.endpoint }}
{{- else if .Values.s3.deploy }}
{{- printf "http://%s:9000" (include "common.names.fullname" .Subcharts.s3) -}}
{{- else }}
{{- end }}
{{- end }}

{{/*
Headless init configuration (cf https://langfuse.com/self-hosting/headless-initialization)
*/}}
{{- define "langfuse.initConfigEnv" -}}
{{- with .Values.langfuse.initConfig }}
- name: LANGFUSE_INIT_ORG_ID
  value: {{ .LANGFUSE_INIT_ORG_ID | quote }}
- name: LANGFUSE_INIT_USER_EMAIL
  value: {{ .LANGFUSE_INIT_USER_EMAIL | default "langfuse@onyxia.fr" | quote }}
- name: LANGFUSE_INIT_USER_NAME
  value: {{ .LANGFUSE_INIT_USER_NAME | quote }}
- name: LANGFUSE_INIT_USER_PASSWORD
  value: {{ .LANGFUSE_INIT_USER_PASSWORD | quote }}
{{- end }}
{{- end }}

{{/*
Overriding the environment variables template common for all deployments
to add headless init configuration.
(cf https://langfuse.com/self-hosting/headless-initialization)
*/}}
{{- define "langfuse.commonEnv" -}}
{{ include "langfuse.serverEnv" . }}
{{ include "langfuse.nextauthEnv" . }}
{{ include "langfuse.databaseEnv" . }}
{{ include "langfuse.redisEnv" . }}
{{ include "langfuse.clickhouseEnv" . }}
{{ include "langfuse.s3Env" . }}
{{ include "langfuse.initConfigEnv" . }}
{{- end -}}
