update
update: selectorSymbolOrNil 
	selectorSymbolOrNil ifNil: [ ^ self ].
	selectorSymbolOrNil = getChildrenSelector ifTrue:
		[ self
			 removeAllMorphs ;
			 addAllMorphs: self children ;
			 submorphsDo:
				[ : m | m
					 hResizing: #spaceFill ;
					 vResizing: #spaceFill ] ]