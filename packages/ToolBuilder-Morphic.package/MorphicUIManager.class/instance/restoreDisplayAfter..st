display
restoreDisplayAfter: aBlock
	"Evaluate the block, wait for a mouse click, and then restore the screen."

	aBlock value.
	Sensor waitButton.
	self restoreDisplay