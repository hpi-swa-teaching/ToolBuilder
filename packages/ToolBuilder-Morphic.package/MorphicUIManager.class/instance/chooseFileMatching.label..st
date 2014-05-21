ui requests
chooseFileMatching: patterns label: aString
	"Let the user choose a file matching the given patterns"
	| result |
	result := FileList2 modalFileSelectorForSuffixes: patterns.
	^result ifNotNil:[result fullName]