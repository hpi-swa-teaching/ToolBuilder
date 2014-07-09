code - pluggable
createCustomCode

	(self uiClass new respondsTo: #customCode) 
	ifFalse: [self uiClass compile: 'customCode' classified: 'toolbuilder'].