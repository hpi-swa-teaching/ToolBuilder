code generation - pluggable
rectFor: aMorph in: aComposite
	| topLeft bottomRight |
	topLeft := aMorph topLeft - aComposite topLeft / 
				(aComposite width @ aComposite height).
	bottomRight := aMorph bottomRight - aComposite topLeft / 
				(aComposite width @ aComposite height).
	^ topLeft asString , ' corner: ' , bottomRight asString