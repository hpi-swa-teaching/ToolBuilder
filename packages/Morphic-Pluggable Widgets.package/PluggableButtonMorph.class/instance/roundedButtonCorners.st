drawing
roundedButtonCorners
	"If the button is intended to invoke a menu for selection, provide a visual
	distinction by inverting the rounded corners attribute."
	^self class roundedButtonCorners
		xor: style == #menuButton