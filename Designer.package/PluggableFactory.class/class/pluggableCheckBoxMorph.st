defaults
pluggableCheckBoxMorph
	| pluggableCheckBoxMorph |
	
	pluggableCheckBoxMorph := PluggableCheckBoxMorph new.
	pluggableCheckBoxMorph model: pluggableCheckBoxMorph.
	pluggableCheckBoxMorph label: 'Checkbox'.
	pluggableCheckBoxMorph color: Color white.
	pluggableCheckBoxMorph actionSelector: #label.
	pluggableCheckBoxMorph valueSelector: #label.
	pluggableCheckBoxMorph extent: 72@16.
	pluggableCheckBoxMorph installButton.
	^pluggableCheckBoxMorph