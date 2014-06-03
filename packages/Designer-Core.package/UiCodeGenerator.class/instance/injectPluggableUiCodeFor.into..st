code - pluggable
injectPluggableUiCodeFor: t1 into: t2 
	| t3 |
	t3 := '({1}) -> [self build{2}With: builder].'.
	source submorphs
		do: [:t4 | 
			t2
				nextPutAll: (t3 format: {self rectFor: t4. t4 objectName asString capitalized});
				 cr.
			self createBuildWithFor: t4].
	t2 nextPutAll: '}.
	^builder build: windowSpec'