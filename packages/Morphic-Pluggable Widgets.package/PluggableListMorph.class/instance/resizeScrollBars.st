scroll cache
resizeScrollBars


	(self extent = self defaultExtent)
		ifTrue:[
			WorldState addDeferredUIMessage: 
				[ self  vResizeScrollBar; resizeScroller; hResizeScrollBar]
		]
		ifFalse:[self vResizeScrollBar; hResizeScrollBar].

	
