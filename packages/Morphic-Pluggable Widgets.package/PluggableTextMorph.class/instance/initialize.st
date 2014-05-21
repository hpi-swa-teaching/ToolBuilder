initialization
initialize
	"initialize the state of the receiver"
	super initialize.
	hasUnacceptedEdits := false.
	hasEditingConflicts := false.
	askBeforeDiscardingEdits := true.
	self
		on: self
		text: nil
		accept: nil
		readSelection: nil
		menu: nil.
