
{{/* Returns a connexion string to the Postgres database. */}}
{{- define "argilla.postgresql.connexionstring" -}}
{{- $username := include "postgresql.v1.username" .Subcharts.postgresql -}}
{{- $password := .Values.global.postgresql.auth.password -}}
{{- $database := include "postgresql.v1.database" .Subcharts.postgresql -}}
{{- $svcname := include "postgresql.v1.primary.fullname" .Subcharts.postgresql -}}
{{- $svcport := include "postgresql.v1.service.port" .Subcharts.postgresql -}}
{{- printf "postgresql+asyncpg://%s:%s@%s:%s/%s" $username $password $svcname $svcport $database -}}
{{- end -}}
