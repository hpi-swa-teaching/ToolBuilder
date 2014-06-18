*Designer
pluggableDefault
	| pluggableButtonSpec pluggableButtonMorph |
	
	pluggableButtonSpec := PluggableButtonSpec new.
	pluggableButtonSpec label: #label.
	pluggableButtonSpec action: #action.
	pluggableButtonSpec model: (PluggableButtonModel new).
	pluggableButtonMorph := (ToolBuilder default) build: pluggableButtonSpec.
	pluggableButtonMorph setProperty: #objectName toValue: 'button'.
	^pluggableButtonMorph