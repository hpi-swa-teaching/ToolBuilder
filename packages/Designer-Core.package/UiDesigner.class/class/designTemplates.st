as yet unclassified
designTemplates
	^ UserInterface subclasses
		select: [:t1 | t1 isTemplate]