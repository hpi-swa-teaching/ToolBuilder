code - pluggable
getSpecName: aMorph
	 | morphClass pluggable pluggablePlus pluggableDesigner pluggableByItemPlus |
	
	morphClass := aMorph class asString.
	pluggableDesigner := 'MorphDesigner'.
	pluggablePlus := 'MorphPlus'.
	pluggableByItemPlus := 'MorphByItemPlus'.
	pluggable := 'Morph'.
	(morphClass findString: pluggableDesigner) > 0 ifTrue:
		[^(morphClass allButLast: pluggableDesigner size) , 'Spec'].
	(morphClass findString: pluggablePlus) > 0 ifTrue:
		[^(morphClass allButLast: pluggablePlus size) , 'Spec'].
	(morphClass findString: pluggableByItemPlus) > 0 ifTrue:
		[^(morphClass allButLast: pluggableByItemPlus size) , 'Spec'].
	(morphClass findString: pluggable) > 0 ifTrue:
		[^(morphClass allButLast: pluggable size) , 'Spec']
	