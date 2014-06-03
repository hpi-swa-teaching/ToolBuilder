save/load
save
	| t1 t2 t3 |
	t1 := UiCodeGenerator new category: self ui packageNameEdit theText;
				 source: container.
	t2 := {[(container hasProperty: #uiClassName) not]
				-> ('The user interface is unnamed and
defaults to <b>' , container uiClassName , '</b>.'). [Smalltalk includesKey: t1 uiClassName asSymbol]
				-> ('The class <b>' , t1 uiClassName , '</b> already exists
and will be overwritten.'). [container color = Color transparent]
				-> 'The outermost widget container is
<b>transparent</b>.'}.
	t3 := UiMessageListDialog new.
	(t2
			count: [:t4 | t4 key value
					and: [t3 addIcon: UiFugueIcons exclamationFrameIcon text: t4 value asHtmlText.
						true]])
			> 0
		ifTrue: [((t3 show: 'Really save the design?' in: self)
					ifNil: [false])
				ifFalse: [^ self]].
	Cursor wait
		showWhile: [t1 generateUiClassFor: container.
			self expandWidgetCategories.
			self addRecentDesign: t1 uiClassName asSymbol].
	UserDialogBoxMorph
		inform: 'UI class was created successfully to:' , String cr , '[' , t1 category , '] ' , t1 uiClassName
		title: 'Done.'
		at: self center