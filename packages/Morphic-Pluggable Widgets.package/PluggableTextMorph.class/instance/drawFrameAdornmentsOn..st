drawing
drawFrameAdornmentsOn: aCanvas 
	"Include a thin red inset border for unaccepted edits, or, if the unaccepted edits are known to conflict with a change made somewhere else to the same method (typically), put a thick red frame"

	self wantsFrameAdornments ifTrue:
		[(model notNil and: [model refusesToAcceptCode])
			ifTrue:  "Put up feedback showing that code cannot be submitted in this state"
				[self drawFrameAdornment: Color tan on: aCanvas]
			ifFalse:
				[self hasEditingConflicts
					ifTrue:
						[self drawFrameAdornment: Color red on: aCanvas] 
					ifFalse:
						[self hasUnacceptedEdits
							ifTrue:
								[model wantsDiffFeedback
									ifTrue:
										[self drawFrameAdornment: Color yellow on: aCanvas]
									ifFalse:
										[self drawFrameAdornment: Color orange on: aCanvas]]
							ifFalse:
								[model wantsDiffFeedback
									ifTrue:
										[self drawFrameAdornment: Color green on: aCanvas]]]]]