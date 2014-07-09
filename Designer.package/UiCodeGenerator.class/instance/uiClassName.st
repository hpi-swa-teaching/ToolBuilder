accessing
uiClassName

	^ (source isKindOf: UiContainer)
		ifTrue: [(source uiClassName capitalized, #Ui) asSymbol]
		ifFalse: [(source uiClassName capitalized) asSymbol]