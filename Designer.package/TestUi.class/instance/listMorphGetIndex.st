listMorphMethods
listMorphGetIndex
	^ listMorphIndex
		ifNil: [listMorphIndex := 1]