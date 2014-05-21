building
buildWindowWith: builder
	| windowSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec model: self.
	windowSpec label: #title.
	windowSpec children: OrderedCollection new.
	^windowSpec