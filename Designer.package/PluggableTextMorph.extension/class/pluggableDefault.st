*designer
pluggableDefault

	| pluggableTextMorph pluggableTextSpec |
	pluggableTextSpec := PluggableTextSpec new.
	pluggableTextSpec model: UiPluggableTextModel new.
	pluggableTextMorph := ToolBuilder build: pluggableTextSpec.
	^ pluggableTextMorph