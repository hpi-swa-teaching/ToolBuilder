event handling
move: offset
	| newindex |
	"The up arrow key moves the cursor, and it seems impossible to restore.
	So, for consistency, on either arrow, select everything, so a new letter-press starts over. yuk."
	searchMorph selectAll.
		
	newindex := self selectedIndex + offset.
	newindex > selectedItems size ifTrue: [ ^ nil ].
	newindex < 1 ifTrue: [ ^ nil ].
	self selectedIndex: newindex.
