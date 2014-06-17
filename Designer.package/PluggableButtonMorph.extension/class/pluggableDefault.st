*Designer
pluggableDefault
	| pluggableButtonSpec pluggableButtonMorph |
	
	pluggableButtonSpec := PluggableButtonSpec new.
	pluggableButtonSpec label: 'button'.
	pluggableButtonSpec action: #click.
	pluggableButtonSpec model: PluggableButtonModel new.
	pluggableButtonMorph := (ToolBuilder default) build: pluggableButtonSpec.
	^pluggableButtonMorph