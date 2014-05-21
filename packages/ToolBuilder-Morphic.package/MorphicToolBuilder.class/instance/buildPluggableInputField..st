pluggable widgets
buildPluggableInputField: aSpec
	| widget |
	widget := self buildPluggableText: aSpec.
	widget acceptOnCR: true.
	widget hideScrollBarsIndefinitely.
	^widget