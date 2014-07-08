toolbuilder
buildListMorphWith: builder
	| listMorph |
	listMorph := PluggableListSpec new.
	listMorph model: self.
	listMorph getIndex: #listMorphGetIndex.
	listMorph getSelected: #listMorphGetSelected.
	listMorph list: #listMorphList.
	listMorph setIndex: #listMorphSetIndex:.
	listMorph setSelected: #listMorphSetSelected:.
	^listMorph