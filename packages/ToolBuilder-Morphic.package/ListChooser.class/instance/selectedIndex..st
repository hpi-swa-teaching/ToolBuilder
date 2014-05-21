accessing
selectedIndex: anInt
	index := (anInt min: selectedItems size).
	self changed: #selectedIndex.
	self changed: #canAccept.