as yet unclassified
versionString
	^ ((Smalltalk
		at: #ConfigurationOfDesigner
		ifAbsent: [])
		ifNotNil: [:t1 | [t1 project currentVersion]
				on: Error
				do: []]) versionNumber asString