{{- define "qa1-langfuse.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "qa1-langfuse.name" -}}
qa1-langfuse
{{- end }}

{{- define "qa1-langfuse.labels" -}}
app.kubernetes.io/name: {{ include "qa1-langfuse.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
