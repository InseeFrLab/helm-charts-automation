


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
