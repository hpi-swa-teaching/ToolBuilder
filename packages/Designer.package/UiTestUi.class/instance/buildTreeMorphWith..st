toolbuilder
buildTreeMorphWith: builder
	| treeMorph |
	treeMorph := PluggableTreeSpec new.
	treeMorph model: self.
	treeMorph roots: #treeMorphRoots.
	^treeMorph