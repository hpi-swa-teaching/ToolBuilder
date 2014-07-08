toolbuilder
buildListMorphWith: builder
	| listMorph |
	listMorph := PluggableListSpec new.
	listMorph model: self.
	listMorph getIndex: #getIndexListMorph.
	listMorph getSelected: #getSelectedListMorph.
	listMorph list: #listListMorph.
	listMorph setIndex:: #setIndex:ListMorph.
	listMorph setSelected:: #setSelected:ListMorph.
	^listMorph