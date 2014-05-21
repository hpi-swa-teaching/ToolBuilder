selection
setSelectedMorph: aMorph
	selectedWrapper := aMorph complexContents.
	self selection: selectedWrapper.
	setSelectedSelector ifNotNil:[
		model 
			perform: setSelectedSelector 
			with: (selectedWrapper ifNotNil:[selectedWrapper item]).
	].