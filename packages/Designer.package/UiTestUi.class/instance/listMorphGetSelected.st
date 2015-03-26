listMorphMethods
listMorphGetSelected
	^ listMorphList
		at: (listMorphIndex
				ifNil: [1])