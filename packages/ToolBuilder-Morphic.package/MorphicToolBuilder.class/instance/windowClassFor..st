widget classes
windowClassFor: aSpec
	aSpec isDialog ifTrue: [^ PluggableDialogWindow].
	^aSpec multiWindowStyle
		caseOf:
		{	[nil]				->	[PluggableSystemWindow].
			[#labelButton]	->	[PluggableSystemWindowWithLabelButton] }
		otherwise:				[PluggableSystemWindowWithLabelButton]