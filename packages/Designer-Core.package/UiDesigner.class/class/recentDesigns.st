as yet unclassified
recentDesigns
	RecentDesigns
		ifNil: [RecentDesigns := OrderedCollection new].
	^ RecentDesigns
		select: [:t1 | Smalltalk includesKey: t1]