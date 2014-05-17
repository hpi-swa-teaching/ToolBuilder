frame adornments
simpleFrameAdornments
	<preference: 'Simple Frame Adornments'
		category: 'Morphic'
		description: 'When true, use a simple rectangular feedback for indicating unsaved changes in text editors'
		type: #Boolean>
	^SimpleFrameAdornments ifNil:[false]