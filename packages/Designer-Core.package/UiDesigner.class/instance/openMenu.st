initialization
openMenu
	| t1 t2 |
	t1 := UiDesignerMenu new disableTableLayout: true;
				 center: World center.
	t1 ignoresColorMappings: true.
	self darken.
	self
		connect: t1
		signal: #recentDesignSelected:
		toSelector: #load:.
	self
		connect: t1
		signal: #designTemplateSelected:
		toSelector: #loadTemplate:.
	self
		connect: t1 ui openBtn
		signal: #clicked:
		toSelector: #load.
	self
		connect: t1 ui newBtn
		signal: #clicked:
		toSelector: #reset.
	self
		connect: t1
		signal: #closed
		toSelector: #lighten.
	t2 := self openInWindowLabeled: 'Morphic Designer'.
	t1 center: t2 center.
	t2 addMorphFront: t1