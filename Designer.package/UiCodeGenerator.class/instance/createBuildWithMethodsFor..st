code generation - pluggable
createBuildWithMethodsFor: aComposite
	| stream isWindow |
	stream := WriteStream on: ''.
	isWindow := (aComposite owner class ~= PluggablePanelMorphDesigner).
	stream nextPutAll: 'build',
		(isWindow ifTrue: [''] 
				    ifFalse: [aComposite objectName asString capitalized]),
				'With: builder
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| ', (isWindow ifTrue: ['window windowSpec |
	windowSpec := self buildWindowWith: builder.
	windowSpec := self buildComposite: windowSpec with: builder specs: {']
		ifFalse:['panelSpec |
	panelSpec := builder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	panelSpec := self buildComposite: panelSpec with: builder specs: {']);crtab.
	self addSubmorphs: aComposite to: stream.
	stream nextPutAll: (isWindow 
		ifTrue: ['}.
	window := builder build: windowSpec.
	self initInstVars.
	self customCode.
	^window']
		ifFalse:['}.
	^panelSpec']).
	self uiClass compile: stream contents classified: 'toolbuilder'.
	isWindow ifTrue: [
		self createOpen.
		self createInitInstVars.
		self createCustomCode.
		self createIsPluggableUi.
		self createBuildCompositeWithSpecsMethod.
		self createBuildWindowWithMethod]