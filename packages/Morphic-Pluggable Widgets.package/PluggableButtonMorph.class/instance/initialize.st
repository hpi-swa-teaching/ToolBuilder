initialize-release
initialize
	"initialize the state of the receiver"
	super initialize.
	""
	self listDirection: #topToBottom.
	self hResizing: #shrinkWrap.
	"<--so naked buttons work right"
	self vResizing: #shrinkWrap.
	self wrapCentering: #center;
		 cellPositioning: #topCenter.
	self borderStyle: BorderStyle thinGray.
	model := nil.
	label := 'Button'.
	getStateSelector := nil.
	actionSelector := nil.
	getLabelSelector := nil.
	getMenuSelector := nil.
	shortcutCharacter := nil.
	askBeforeChanging := false.
	triggerOnMouseDown := false.
	onColor := self color darker.
	offColor := self color.
	feedbackColor := Color red.
	showSelectionFeedback := false.
	allButtons := nil.
	argumentsProvider := nil.
	argumentsSelector := nil.
	self extent: 20 @ 15