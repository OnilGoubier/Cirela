animation
animatedSimulation: aTimeNodeMessages
	
	| view circle line dic e |
	dic := Dictionary new.
	view := RTView new.
	view @ RTDraggableView.
	circle := RTEllipse new
		size: self getNodeRange *2;
		borderColor: (Color blue alpha: 0.3).
	line := RTLine new color: Color blue.
	self nodes
		do: [ :nd | 
			e := circle element translateTo: nd point.
			view add: e.	
			e @ RTDraggable.
			dic at: nd put: e ].
	self links do: [ :ln | view add: (line edgeFrom: (dic at: ln source) to: (dic at: ln target))	"self halt. " ].
	view canvas
		addMenu: 'Start'
		callback: [ 
			view
				addAnimation:
					(NetworkAnimation new
						view: view;
						messages: aTimeNodeMessages) ].
	view open