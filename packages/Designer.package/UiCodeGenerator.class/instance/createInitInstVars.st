code generation - pluggable
createInitInstVars

	| stream initTemplate |
	initTemplate := '{1} := submorph.'.
	(stream := WriteStream on: '')
	nextPutAll: 'initInstVarsOf: aWindow
	aWindow submorphs do:
		[:submorph | '.
	(source allMorphs select: [ :m | m owner class = UiPluggablePanelMorphDesigner])
		do: [ :submorph |
		stream nextPutAll: (initTemplate format: {submorph objectName}); crtab; tab].
	stream nextPut: $].
	self uiClass compile: stream contents classified: 'toolbuilder'.