{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "analytics.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "ingress.labels" -}}
helm.sh/chart: {{ include "analytics.chart" . }}
app.kubernetes.io/name: {{ .Chart.Name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "api_gateway.labels" -}}
helm.sh/chart: {{ include "analytics.chart" . }}
app.kubernetes.io/name: {{ .Values.api_gateway.name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "portal.labels" -}}
helm.sh/chart: {{ include "analytics.chart" . }}
app.kubernetes.io/name: {{ .Values.portal.name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "slotbooking_analytics.labels" -}}
helm.sh/chart: {{ include "analytics.chart" . }}
app.kubernetes.io/name: {{ .Values.slotbooking_analytics.name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "analytics_service.labels" -}}
helm.sh/chart: {{ include "analytics.chart" . }}
app.kubernetes.io/name: {{ .Values.analytics_service.name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

