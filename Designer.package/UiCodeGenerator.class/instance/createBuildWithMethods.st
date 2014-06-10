code generation - pluggable
createBuildWithMethods
	| stream |
	stream := WriteStream on: ''.
	stream nextPutAll: 'buildWith: builder
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| windowSpec |
	
	windowSpec := self buildWindowWith: builder specs: {
		'.
	self injectPluggableUiCodeFor: source into: stream.
	self uiClass compile: stream contents classified: 'toolbuilder'.
	self createBuildWindowWithSpecsMethod.
	self createBuildWindowWithMethod