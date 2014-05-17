menu commands
yellowButtonActivity: shiftKeyState 
	"Called when the shifted-menu's 'more' item is chosen"
	| menu |
	(menu := self getMenu: shiftKeyState)
		ifNotNil: [""
			menu setInvokingView: self.
			menu invokeModal]