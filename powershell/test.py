f"""
{{ if or (.Working.Changed) (.Staging.Changed) (gt .StashCount 0) }}
    <p:magenta>{{ .UpstreamIcon }}{{ .HEAD }}</>
{{ else }}
    <p:green>{{ .UpstreamIcon }}{{ .HEAD }}</>
{{ end }}

{{ if (gt .Ahead 0)}}
    <p:turquoise>{{ .BranchStatus }}</>
{{ end }}

{{ if (gt .Behind 0)}}
    <p:turquoise>{{ .BranchStatus }}</>
{{ end }}

{{ if .Staging.Changed }}
     <p:green>{{ .Staging.String }}</>
{{ end }}

{{ if .Working.Changed }}
     <p:red>{{ .Working.String }}</>
{{ end }}

"""

0