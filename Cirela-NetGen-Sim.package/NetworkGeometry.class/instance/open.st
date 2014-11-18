opening
open

	| view  circle line dic e | 
	
	dic := Dictionary new.
	view :=  RTView new.
	view @ RTDraggableView.
	circle := (RTEllipse new size: (self getNodeRange); borderColor: (Color blue alpha: 0.3)).
	self nodes do: [ :nd | 
					e := circle element translateBy: ((nd point) - (view canvas extent )/2).
					view add: e. " compuation to be checked"
					e @ RTDraggable.
					dic at: nd put: e].	
	
	line := RTLine new color: Color blue.
	self links do: [ :ln| view add: (line edgeFrom: (dic at: (ln source)) to: (dic at: (ln target) )). 
						"self halt. " ].
	
	view open. 