pluggable widgets
buildHelpFor: widget spec: aSpec
	aSpec help
		ifNotNil: [widget setBalloonText: aSpec help]