{{/*
Generate ca for postgresql
*/}}
{{- define "backstage.postgresql.generateCA" -}}
{{- $ca := .ca | default (genCA (include "common.names.fullname" .) 365) -}}
{{- $_ := set . "ca" $ca -}}
{{- $ca.Cert -}}
{{- end -}}

{{/*
Generate certificates for postgresql
*/}}
{{- define "generateCerts" -}}
{{- $postgresName := (include "common.names.fullname" .) }}
{{- $altNames := list $postgresName ( printf "%s.%s" $postgresName .Release.Namespace ) ( printf "%s.%s.svc" ( $postgresName ) .Release.Namespace ) -}}
{{- $ca := .ca | default (genCA (include "common.names.fullname" .) 365) -}}
{{- $_ := set . "ca" $ca -}}
{{- $cert := genSignedCert ( $postgresName ) nil $altNames 365 $ca -}}
tls.crt: {{ $cert.Cert | b64enc }}
tls.key: {{ $cert.Key | b64enc }}
{{- end -}}