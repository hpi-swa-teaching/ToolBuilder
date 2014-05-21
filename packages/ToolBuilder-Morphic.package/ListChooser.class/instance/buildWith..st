building
buildWith: aBuilder
	| windowSpec |
	builder := aBuilder.
	windowSpec := self buildWindowWith: builder specs: {
		(0@0 corner: 1@0.05) -> [self buildSearchMorphWith: builder].
		(0@0.05 corner: 1@0.9) -> [self buildListMorphWith: builder].
		(0@0.9 corner: 1@1) -> [self buildButtonBarWith: builder].
	}.
	windowSpec closeAction: #closed.
	windowSpec extent: self initialExtent.
	window := builder build: windowSpec.
	
	
	searchMorph := window submorphs detect: 
		[ :each | each isKindOf: PluggableTextMorph ].
	searchMorph
		hideScrollBarsIndefinitely;
		acceptOnCR: true;
		setBalloonText: 'Type a string to filter down the listed items';
		onKeyStrokeSend: #keyStroke: to: self;
		hasUnacceptedEdits: true "force acceptOnCR to work even with no text entered".
	listMorph := window submorphs detect: 
		[ :each | each isKindOf: PluggableListMorph ].
	^ window