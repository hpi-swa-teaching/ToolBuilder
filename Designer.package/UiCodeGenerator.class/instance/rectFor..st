code generation - pluggable
rectFor: aMorph 

	| topLeft bottomRight |
	topLeft := aMorph topLeft - source topLeft / (source width @ source height).
	bottomRight := aMorph bottomRight - source topLeft / (source width @ source height).
	^ topLeft asString , ' corner: ' , bottomRight asString