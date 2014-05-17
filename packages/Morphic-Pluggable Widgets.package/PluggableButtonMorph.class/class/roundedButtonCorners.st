preferences
roundedButtonCorners
	<preference: 'Rounded Button Corners'
		category: 'windows'
		description: 'Governs whether pluggable buttons in system windows should be rounded'
		type: #Boolean>
	^ RoundedButtonCorners ifNil: [ true ]