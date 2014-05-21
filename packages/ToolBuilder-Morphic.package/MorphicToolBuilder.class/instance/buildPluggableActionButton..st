pluggable widgets
buildPluggableActionButton: aSpec
	| button |
	button := self buildPluggableButton: aSpec.
	button color: Color white.
	^button