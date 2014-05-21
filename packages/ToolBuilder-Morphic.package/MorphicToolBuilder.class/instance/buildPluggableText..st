pluggable widgets
buildPluggableText: aSpec
	| widget |
	widget := self textPaneClass on: aSpec model
				text: aSpec getText 
				accept: aSpec setText
				readSelection: aSpec selection 
				menu: aSpec menu.
	widget askBeforeDiscardingEdits: aSpec askBeforeDiscardingEdits.
	widget font: Preferences standardCodeFont.
	self register: widget id: aSpec name.
	widget getColorSelector: aSpec color.
	self buildHelpFor: widget spec: aSpec. 
	self setFrame: aSpec frame in: widget.
	parent ifNotNil:[self add: widget to: parent].
	widget borderColor: Color lightGray.
	widget color: Color white.
	^widget