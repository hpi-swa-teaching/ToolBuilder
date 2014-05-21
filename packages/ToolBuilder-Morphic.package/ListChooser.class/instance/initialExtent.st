building
initialExtent
	| listFont titleFont buttonFont listWidth titleWidth buttonWidth |
	listFont := Preferences standardListFont.
	titleFont := Preferences windowTitleFont.
	buttonFont := Preferences standardButtonFont.
	listWidth := 20 * (listFont widthOf: $m).
	titleWidth := titleFont widthOfString: self title, '__________'. "add some space for titlebar icons"
	buttonWidth := buttonFont widthOfString: '_Accept_(s)___Add (a)___Cancel_(l)_'.
	^ (listWidth max: (titleWidth max: buttonWidth))@(30 * (listFont height))