testing
okToStyle
	styler ifNil:[^false].
	(model respondsTo: #aboutToStyle: ) ifFalse:[^true].
	^model aboutToStyle: styler
