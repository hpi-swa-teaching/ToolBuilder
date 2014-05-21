initialize-release
chooseIndexFrom: labelList title: aString addAllowed: aBoolean
	| choice |
	choice := self chooseItemFrom: labelList title: aString addAllowed: false.
	addAllowed := aBoolean.
	^ fullList indexOf: choice ifAbsent: 0