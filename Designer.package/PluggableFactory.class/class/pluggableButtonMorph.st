defaults
pluggableButtonMorph
	| pluggableButtonMorph |
	pluggableButtonMorph := (ToolBuilder default) build: PluggableButtonSpec new.
	pluggableButtonMorph label: 'button'.
	^pluggableButtonMorph