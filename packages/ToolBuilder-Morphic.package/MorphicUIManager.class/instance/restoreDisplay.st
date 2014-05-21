display
restoreDisplay
	"Restore the bits on Display"
	Project current ifNotNil:[:p| p invalidate; restore].