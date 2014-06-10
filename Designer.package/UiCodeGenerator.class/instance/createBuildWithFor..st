code generation - pluggable
createBuildWithFor: t1 
	| t2 t3 t4 t5 t6 t7 |
	t6 := '{1} {2}: {3}.'.
	t7 := '^{1}'.
	t4 := (t1 class asString allButLast: 5)
				, 'Spec'.
	t3 := t1 objectName.
	t2 := WriteStream on: ''.
	t2 nextPutAll: 'build' , t3 asString capitalized , 'With: builder
	| ' , t3 , ' |
	' , t3 , ' := ' , t4 , ' new.
	'.
	t5 := (((Smalltalk at: t4 asSymbol) allInstVarNames)
			select: [ :instVar |
		(((Smalltalk at: t4 asSymbol) allMethodsInCategory: 'accessing')
				select: [:t8 | (t8 asString last = $:) 
							& (t8 asString ~= 'model:') 
							& (t8 asString ~= 'frame:') ])
						includes: (instVar, $:)]).
	t2 nextPutAll: (t6 format: {t3. 'model'. 'self'}); crtab.
	"t5
		do: [:t8 | t2
				nextPutAll: (t6 format: {t3. t8. '#', t8 asSymbol, t3 asString capitalized});
				 crtab.
				self uiClass 
					compile: (t8 asSymbol, t3 asString capitalized) 
					classified: (t3 asString, 'Methods')]."
	t2
		nextPutAll: (t7 format: {t3}).
	self uiClass compile: t2 contents classified: 'toolbuilder'