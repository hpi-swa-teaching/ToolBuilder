drag and drop
wantsDroppedMorph: aMorph event: anEvent
	aMorph dragTransferType == #dragTransferPlus ifFalse:[^false].
	dropItemSelector ifNil:[^false].
	wantsDropSelector ifNil:[^true].
	^(model perform: wantsDropSelector with: aMorph passenger) == true