morphic
acceptDroppingMorph: aTransferMorph event: evt 
	dropItemSelector ifNil: [ ^ self ].
	model
		perform: dropItemSelector
		withEnoughArguments: {aTransferMorph passenger. 
			(self itemFromPoint: evt position) withoutListWrapper. 
			aTransferMorph shouldCopy}.
	evt hand releaseMouseFocus: self.
	potentialDropMorph ifNotNil: [ potentialDropMorph highlightForDrop: false ].
	Cursor normal show