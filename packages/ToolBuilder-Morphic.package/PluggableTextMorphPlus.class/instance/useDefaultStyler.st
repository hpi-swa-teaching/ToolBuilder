initialize
useDefaultStyler
	"This should be changed to a proper registry but as long as there is only shout this will do"
	Smalltalk at: #SHTextStylerST80 ifPresent:[:stylerClass|
		self styler: (stylerClass new view: self).
	].