private
add: aMorph to: aParent
	aParent addMorphBack: aMorph.
	aParent isSystemWindow ifTrue:[
		aParent addPaneMorph: aMorph.
	].