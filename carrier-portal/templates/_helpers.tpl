{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "carrier-portal.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "ingress.labels" -}}
helm.sh/chart: {{ include "carrier-portal.chart" . }}
app.kubernetes.io/name: {{ .Chart.Name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}


{{- define "portal.labels" -}}
helm.sh/chart: {{ include "carrier-portal.chart" . }}
app.kubernetes.io/name: {{ .Values.portal.name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}


{{- define "service.labels" -}}
helm.sh/chart: {{ include "carrier-portal.chart" . }}
app.kubernetes.io/name: {{ .Values.service.name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

