{{- define "qa1-langfuse.name" -}}
qa1-langfuse
{{- end }}

{{- define "qa1-langfuse.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "qa1-langfuse.labels" -}}
app.kubernetes.io/name: {{ include "qa1-langfuse.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "qa1-langfuse.selectorLabels" -}}
app.kubernetes.io/name: {{ include "qa1-langfuse.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "qa1-langfuse.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}
