opening
open: anObject
	"Build and open the object. Answer the widget opened."
	| morph |
	anObject isMorph 
		ifTrue:[morph := anObject]
		ifFalse:[morph := self build: anObject].
	(morph isKindOf: MenuMorph)
		ifTrue:[morph popUpInWorld: World].
	(morph isKindOf: SystemWindow)
		ifTrue:[morph openInWorldExtent: morph extent]
		ifFalse:[morph openInWorld].
	^morph