


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
