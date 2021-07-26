{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "activity-service.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels for activity-service
*/}}
{{- define "activity-service.labels" -}}
helm.sh/chart: {{ include "activity-service.chart" . }}
app.kubernetes.io/name: {{ .Values.activity_service.name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}


