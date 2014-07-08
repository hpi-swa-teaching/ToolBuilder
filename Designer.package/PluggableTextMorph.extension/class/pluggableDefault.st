*designer
pluggableDefault

	| pluggableTextMorph pluggableTextSpec |
	pluggableTextSpec := PluggableTextSpec new.
	pluggableTextSpec model: PluggableTextModel new.
	pluggableTextMorph := ToolBuilder build: pluggableTextSpec.
	^ pluggableTextMorph