updating
update: aSymbol with: arg1
	aSymbol == #editString ifTrue:[
		self editString: arg1.
		self hasUnacceptedEdits: true.
	].
	^super update: aSymbol with: arg1