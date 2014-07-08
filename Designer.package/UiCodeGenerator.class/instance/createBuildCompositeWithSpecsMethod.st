code generation - pluggable
createBuildCompositeWithSpecsMethod
	self uiClass compile: 'buildComposite: aCompositeSpec with: builder specs: specs
	specs do:[:assoc|
		| rect action widgetSpec |
		rect := assoc key.
		action := assoc value.
		widgetSpec := action value.
		widgetSpec ifNotNil:[
			widgetSpec frame: rect.
			aCompositeSpec children add: widgetSpec]].
	^aCompositeSpec' classified: 'toolbuilder'