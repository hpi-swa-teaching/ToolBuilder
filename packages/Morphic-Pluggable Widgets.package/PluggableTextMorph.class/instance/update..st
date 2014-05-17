updating
update: aSymbol 
	aSymbol ifNil: [^self].
	aSymbol == #flash ifTrue: [^self flash].
	aSymbol == getTextSelector 
		ifTrue: 
			[self setText: self getText.
			^self setSelection: self getSelection].
	aSymbol == getSelectionSelector 
		ifTrue: [^self setSelection: self getSelection].
	(aSymbol == #autoSelect and: [getSelectionSelector notNil]) 
		ifTrue: 
			[self handleEdit: 
					[(textMorph editor)
						abandonChangeText; "no replacement!"
						setSearch: model autoSelectString;
						againOrSame: true]].
	aSymbol == #clearUserEdits ifTrue: [^self hasUnacceptedEdits: false].
	aSymbol == #wantToChange 
		ifTrue: 
			[self canDiscardEdits ifFalse: [^self promptForCancel].
			^self].
	aSymbol == #appendEntry 
		ifTrue: 
			[self handleEdit: [self appendEntry].
			^self refreshWorld].
	aSymbol == #clearText 
		ifTrue: 
			[self handleEdit: [self changeText: Text new].
			^self refreshWorld].
	aSymbol == #bs 
		ifTrue: 
			[self handleEdit: [self bsText].
			^self refreshWorld].
	aSymbol == #codeChangedElsewhere 
		ifTrue: 
			[self hasEditingConflicts: true.
			^self changed].
	aSymbol == #saveContents
		ifTrue:
			[^self saveContentsInFile]