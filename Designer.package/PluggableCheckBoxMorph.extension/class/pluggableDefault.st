*Designer
pluggableDefault

	| pluggableCheckBoxMorph pluggableCheckBoxSpec |
	pluggableCheckBoxSpec :=  PluggableCheckBoxSpec new.
	pluggableCheckBoxSpec label: #label.
	pluggableCheckBoxSpec action: #action.
	pluggableCheckBoxSpec state: #state.
	pluggableCheckBoxSpec model: PluggableCheckBoxModel new.
	pluggableCheckBoxMorph := (ToolBuilder default) build: pluggableCheckBoxSpec. 
	pluggableCheckBoxMorph color: Color white.
	pluggableCheckBoxMorph extent: 72@16.
	^pluggableCheckBoxMorph