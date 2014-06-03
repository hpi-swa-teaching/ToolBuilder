code - pluggable
createBuildWithMethods
	| t1 |
	t1 := WriteStream on: ''.
	t1 nextPutAll: 'buildWith: builder
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| windowSpec |
	
	windowSpec := self buildWindowWith: builder specs: {
		'.
	self injectPluggableUiCodeFor: source into: t1.
	self uiClass compile: t1 contents classified: 'toolbuilder'.
	self createBuildWindowWithSpecsMethod.
	self createBuildWindowWithMethod