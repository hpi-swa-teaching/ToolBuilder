code generation - pluggable
getSpecName: aMorph

	 | morphClass morphNames |
	morphClass := aMorph class asString.
	morphNames := #('MorphDesigner' 'MorphPlus' 'MorphByItemPlus' 'Morph').
	morphNames do: [ :morphName | (morphClass findString: morphName) > 0 ifTrue:
		[^ (morphClass allButLast: morphName size) , 'Spec']].
	