pluggable widgets
buildPluggableTree: aSpec
	| widget |
	widget := self treeClass new.
	self register: widget id: aSpec name.
	widget model: aSpec model.
	widget getSelectedPathSelector: aSpec getSelectedPath.
	widget setSelectedSelector: aSpec setSelected.
	widget getChildrenSelector: aSpec getChildren.
	widget hasChildrenSelector: aSpec hasChildren.
	widget getLabelSelector: aSpec label.
	widget getIconSelector: aSpec icon.
	widget getHelpSelector: aSpec help.
	widget getMenuSelector: aSpec menu.
	widget keystrokeActionSelector: aSpec keyPress.
	widget getRootsSelector: aSpec roots.
	widget autoDeselect: aSpec autoDeselect.
	widget dropItemSelector: aSpec dropItem.
	widget wantsDropSelector: aSpec dropAccept.
	widget dragItemSelector: aSpec dragItem.
	self setFrame: aSpec frame in: widget.
	parent ifNotNil:[self add: widget to: parent].
"	panes ifNotNil:[
		aSpec roots ifNotNil:[panes add: aSpec roots].
	].	"
	^widget