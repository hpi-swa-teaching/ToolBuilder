morphic
startDrag: evt 
	| ddm itemMorph passenger |
	self dragEnabled
		ifTrue: [itemMorph := scroller submorphs
						detect: [:any | any highlightedForMouseDown]
						ifNone: []].
	(itemMorph isNil
			or: [evt hand hasSubmorphs])
		ifTrue: [^ self].
	itemMorph highlightForMouseDown: false.
	itemMorph ~= self selectedMorph
		ifTrue: [self setSelectedMorph: itemMorph].
	passenger := self model perform: dragItemSelector with: itemMorph withoutListWrapper.
	passenger
		ifNotNil: [ddm := TransferMorph withPassenger: passenger from: self.
			ddm dragTransferType: #dragTransferPlus.
			Preferences dragNDropWithAnimation
				ifTrue: [self model dragAnimationFor: itemMorph transferMorph: ddm].
			evt hand grabMorph: ddm].
	evt hand releaseMouseFocus: self