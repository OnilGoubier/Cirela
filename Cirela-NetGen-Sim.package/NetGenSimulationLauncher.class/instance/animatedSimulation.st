animation
animatedSimulation


	| view  circle line dic e txt| 
	
	dic := Dictionary new.
	view :=  RTView new.
	view @ RTDraggableView.
	circle := (RTEllipse new size: (self networkGeometry getNodeRange); borderColor: (Color blue alpha: 0.3)).
	self networkGeometry nodes do: [ :nd | 
					e := circle element translateBy: ((nd point) - (view canvas extent )/2).
					view add: e. " compuation to be checked"
					e @ RTDraggable.
					dic at: nd put: e].	
	
	line := RTLine new color: Color blue.
	self networkGeometry links do: [ :ln| view add: (line edgeFrom: (dic at: (ln source)) to: (dic at: (ln target) )). 
						"self halt. " ].
	
	txt  := (RTLabel new text: 'hello'; color: (Color red )) element.
	view add: txt .
	view addAnimation: (RTLinearMove to: 100 @ 100 during: 2 on: txt ). 

	view open. 