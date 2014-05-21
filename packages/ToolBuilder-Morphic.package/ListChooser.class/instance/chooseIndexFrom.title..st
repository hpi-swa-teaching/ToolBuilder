initialize-release
chooseIndexFrom: labelList title: aString
	| choice |
	choice := self chooseItemFrom: labelList title: aString addAllowed: false.
	^ fullList indexOf: choice ifAbsent: 0