private - inst vars
instVarsString
	| t1 |
	t1 := WriteStream on: ''.
	self namedInstVars
		do: [:t2 | t1
				nextPutAll: (t2 at: #name)]
		separatedBy: [t1 nextPut: Character space].
	^ t1 contents