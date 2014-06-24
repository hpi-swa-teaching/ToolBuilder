*Designer
pluggableDefault

	| pluggableCheckBoxMorph pluggableCheckBoxSpec |
	pluggableCheckBoxSpec :=  PluggableCheckBoxSpec new.
	pluggableCheckBoxSpec label: #label;
		action: #action;
		state: #state;
		model: PluggableCheckBoxModel new.
	pluggableCheckBoxMorph := ToolBuilder build: pluggableCheckBoxSpec. 
	pluggableCheckBoxMorph color: Color white.
	pluggableCheckBoxMorph extent: 72@16.
	^pluggableCheckBoxMorph