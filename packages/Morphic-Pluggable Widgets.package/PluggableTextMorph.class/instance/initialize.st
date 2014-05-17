initialization
initialize
	"initialize the state of the receiver"
	super initialize.
	hasUnacceptedEdits := false.
	hasEditingConflicts := false.
	askBeforeDiscardingEdits := true.
