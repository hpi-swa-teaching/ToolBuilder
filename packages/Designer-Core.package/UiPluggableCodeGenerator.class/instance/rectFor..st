private - reading
rectFor: t1 
	| t2 t3 |
	t2 := t1 topLeft - source topLeft / (source width @ source height).
	t3 := t1 bottomRight - source topLeft / (source width @ source height).
	^ t2 asString , ' corner: ' , t3 asString