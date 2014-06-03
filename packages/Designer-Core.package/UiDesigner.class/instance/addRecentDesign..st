accessing
addRecentDesign: t1 
	RecentDesigns
		ifNil: [RecentDesigns := OrderedCollection new].
	RecentDesigns
		remove: t1
		ifAbsent: [];
		 addFirst: t1.
	[RecentDesigns size > 5]
		whileTrue: [RecentDesigns removeLast]