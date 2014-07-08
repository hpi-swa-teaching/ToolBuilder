*designer
pluggableDefault
	| pluggableButtonSpec pluggableButtonMorph |
	
	pluggableButtonSpec := PluggableButtonSpec new.
	pluggableButtonSpec
		model: PluggableButtonModel new; 
		label: #label;
		action: #action.
	pluggableButtonMorph := ToolBuilder build: pluggableButtonSpec.
	^ pluggableButtonMorph