drawing
installDropDownList

	| aButton aLabel |
	aButton := PluggableButtonMorph on: self model getState: nil action: nil.
	aLabel := (StringMorph contents: self model currentRemoteVatId translated
				font: (StrikeFont familyName: TextStyle defaultFont familyName
							size: TextStyle defaultFont pointSize - 1)).
	self addMorph: (self horizontalPanel
		addMorphBack: aLabel;
		addMorphBack: aButton;
		yourself).