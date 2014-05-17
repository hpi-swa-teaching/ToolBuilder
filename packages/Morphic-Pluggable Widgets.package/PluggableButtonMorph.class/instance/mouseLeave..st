event handling
mouseLeave: evt

	"0.09375 is exact in floating point so no cumulative rounding error will occur"
	self color: (self color adjustBrightness: 0.09375).
	self update: nil