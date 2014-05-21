drag and drop
startDrag: evt 
	
	dragItemSelector ifNil:[^self].
	evt hand hasSubmorphs ifTrue: [^ self].
	[ | dragIndex draggedItem ddm |
	(self dragEnabled and: [model okToChange]) ifFalse: [^ self].
	dragIndex := self rowAtLocation: evt position.
	dragIndex = 0 ifTrue:[^self].
	draggedItem := model perform: dragItemSelector with: (self modelIndexFor: dragIndex).
	draggedItem ifNil:[^self].
	ddm := TransferMorph withPassenger: draggedItem from: self.
	ddm dragTransferType: #dragTransferPlus.
	evt hand grabMorph: ddm]
		ensure: [Cursor normal show.
			evt hand releaseMouseFocus: self]