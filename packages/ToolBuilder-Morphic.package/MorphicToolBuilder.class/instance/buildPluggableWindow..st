pluggable widgets
buildPluggableWindow: aSpec
	| widget children |
	aSpec layout == #proportional ifFalse:[
		"This needs to be implemented - probably by adding a single pane and then the rest"
		^self error: 'Not implemented'.
	].
	widget := (self windowClassFor: aSpec) new.
	self register: widget id: aSpec name.
	widget model: aSpec model.
	aSpec label ifNotNil:
		[:label|
		label isSymbol 
			ifTrue:[widget getLabelSelector: label]
			ifFalse:[widget setLabel: label]].
	aSpec multiWindowStyle notNil ifTrue:
		[widget savedMultiWindowState: (SavedMultiWindowState on: aSpec model)].
	children := aSpec children.
	children isSymbol ifTrue:[
		widget getChildrenSelector: children.
		widget update: children.
		children := #().
	].
	widget closeWindowSelector: aSpec closeAction.
	panes := OrderedCollection new.
	self buildAll: children in: widget.
	self buildHelpFor: widget spec: aSpec. 
	widget bounds: (RealEstateAgent 
		initialFrameFor: widget 
		initialExtent: (aSpec extent ifNil:[widget initialExtent])
		world: self currentWorld).
	widget setUpdatablePanesFrom: panes.
	^widget