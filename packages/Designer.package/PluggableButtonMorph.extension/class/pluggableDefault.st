*designer
pluggableDefault
	| pluggableButtonSpec pluggableButtonMorph |
	
	pluggableButtonSpec := PluggableButtonSpec new.
	pluggableButtonSpec
		model: UiPluggableButtonModel new; 
		label: #label;
		action: #action.
	pluggableButtonMorph := ToolBuilder build: pluggableButtonSpec.
	^ pluggableButtonMorph