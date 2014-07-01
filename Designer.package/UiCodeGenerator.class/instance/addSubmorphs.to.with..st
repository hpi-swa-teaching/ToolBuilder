code generation - pluggable
addSubmorphs: aPanel to: stream with: creationTemplate

	aPanel submorphs
		do: [:submorph | 
			submorph class = PluggablePanelMorphDesigner 
				ifTrue: [ | tmpPanel |
					tmpPanel := ToolBuilder build: PluggablePanelSpec new.
					submorph submorphs 
						do: [ :subSubMorph | 
							tmpPanel addMorph: subSubMorph].
					tmpPanel setProperty: #objectName toValue: submorph objectName.
					tmpPanel position: submorph position.
					tmpPanel extent: submorph extent.
					submorph := tmpPanel.
					self addSubmorphs: submorph to: stream with: creationTemplate].
			stream
				nextPutAll: (creationTemplate format: 
					{self rectFor: submorph. 
					submorph objectName asString capitalized});
				 crtab.
			self createBuildWithFor: submorph].