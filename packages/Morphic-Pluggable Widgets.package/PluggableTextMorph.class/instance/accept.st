menu commands
accept 
	"Inform the model of text to be accepted, and return true if OK."

	| ok saveSelection saveScrollerOffset |
"sps 8/13/2001 22:41: save selection and scroll info"
	saveSelection := self selectionInterval copy.
	saveScrollerOffset := scroller offset copy.

	(self canDiscardEdits and: [(self hasProperty: #alwaysAccept) not])
		ifTrue: [^ self flash].

	self hasEditingConflicts ifTrue:
		[(self confirm: 
'Caution! This method may have been
changed elsewhere since you started
editing it here.  Accept anyway?' translated) ifFalse: [^ self flash]].
	ok := self acceptTextInModel.
	ok==true ifTrue:
		[self setText: self getText.
		self hasUnacceptedEdits: false.
		(model dependents detect: [:dep | (dep isKindOf: PluggableTextMorph) and: [dep getTextSelector == #annotation]] ifNone: [nil]) ifNotNil:
			[:aPane | model changed: #annotation]].

	"sps 8/13/2001 22:41: restore selection and scroll info"
	["During the step for the browser, updateCodePaneIfNeeded is called, and 
		invariably resets the contents of the codeholding PluggableTextMorph
		at that time, resetting the cursor position and scroller in the process.
		The following line forces that update without waiting for the step, 		then restores the cursor and scrollbar"

	ok ifTrue: "(don't bother if there was an error during compile)"
		[(model respondsTo: #updateCodePaneIfNeeded) 
			ifTrue: [model updateCodePaneIfNeeded].
		WorldState addDeferredUIMessage:
			[self currentHand newKeyboardFocus: textMorph.
			scroller offset: saveScrollerOffset.
			self setScrollDeltas.
			selectionInterval := saveSelection. "restore prior selection"
			self selectFrom: saveSelection first to: saveSelection last]]]

			on: Error do: []
