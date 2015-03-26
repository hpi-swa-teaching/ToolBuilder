*designer
pluggableDefault

	| pluggableCheckBoxMorph pluggableCheckBoxSpec |
	pluggableCheckBoxSpec :=  PluggableCheckBoxSpec new.
	pluggableCheckBoxSpec label: #label;
		action: #action;
		state: #state;
		model: UiPluggableCheckBoxModel new.
	pluggableCheckBoxMorph := ToolBuilder build: pluggableCheckBoxSpec. 
	pluggableCheckBoxMorph 
		color: Color white;
		extent: 72@16.
	^ pluggableCheckBoxMorph