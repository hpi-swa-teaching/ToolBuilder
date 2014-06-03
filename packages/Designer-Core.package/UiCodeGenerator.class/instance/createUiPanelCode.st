code generation
createUiPanelCode
	| t1 t2 |
	t2 := 'panel setProperty: #uiClassName toValue: ''{1}''.'.
	t1 := WriteStream on: ''.
	t1 nextPutAll: 'initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| '.
	self unnamedInstVars
		do: [:t3 | t1
				nextPutAll: (t3 at: #name)]
		separatedBy: [t1 nextPutAll: ' '].
	t1 nextPutAll: ' |
	'.
	source setProperty: #objectNameTemp toValue: source objectName.
	self injectUiCodeFor: source into: t1.
	t1 crtab;
		nextPutAll: (t2 format: {source uiClassName}).
	self uiClass compile: t1 contents classified: 'ui - private'