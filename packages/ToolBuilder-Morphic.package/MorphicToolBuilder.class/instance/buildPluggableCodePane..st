pluggable widgets
buildPluggableCodePane: aSpec
	"Install the default styler for code panes.
	Implementation note: We should just be doing something like, e.g.,
		^(self buildPluggableText: aSpec) useDefaultStyler
	Unfortunately, this will retrieve and layout the initial text twice which
	can make for a noticable performance difference when looking at some
	larger piece of code. So instead we copy the implementation from 
	buildPlugggableText: here and insert #useDefaultStyler at the right point"
	| widget |
	widget := self codePaneClass new.
	widget useDefaultStyler.
	widget on: aSpec model
				text: aSpec getText 
				accept: aSpec setText
				readSelection: aSpec selection 
				menu: aSpec menu.
	widget font: Preferences standardCodeFont.
	self register: widget id: aSpec name.
	widget getColorSelector: aSpec color.
	self setFrame: aSpec frame in: widget.
	parent ifNotNil:[self add: widget to: parent].
	widget borderColor: Color lightGray.
	widget color: Color white.
	^widget