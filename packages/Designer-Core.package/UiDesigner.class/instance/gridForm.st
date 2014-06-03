background
gridForm
	| t1 t2 |
	t1 := Form extent: 20 @ 20 depth: 32.
	t1
		floodFill: (Color gray: 0.98)
		at: 0 @ 0.
	t2 := FormCanvas on: t1.
	t2
		point: 0 @ 0
		color: (Color gray: 0.2).
	^ t1