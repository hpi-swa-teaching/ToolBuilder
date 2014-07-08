toolbuilder
buildWindowWith: builder
	| windowSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec model: self.
	windowSpec label: 'TestUi'.
	windowSpec extent: 500@322.
	windowSpec children: OrderedCollection new.
	^windowSpec