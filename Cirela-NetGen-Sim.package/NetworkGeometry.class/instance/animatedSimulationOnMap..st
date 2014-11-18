animation
animatedSimulationOnMap: aTimeNodeMessages
	| view circle line dic e map |
	dic := Dictionary new.
	view := RTView new.
	view @ RTDraggableView.
	map := RTOSM new extent: 1000@750.
	e := map element.
	view add: e.
	circle := RTEllipse new
		color: (Color blue alpha: 0.25).
	line := RTLine new
		color: Color blue;
		width: 0.005.
	self nodes
		do: [ :nd | 
			e := ((circle size: (map latLon: nd point  distance: self getNodeRange * 2)) elementOn: nd)
				translateTo: (map latLonToRoassal: nd point).
			view add: e.
			"e @ RTDraggable."
			dic at: nd put: e ].
	self links
		do: [ :ln | view add:  (line edgeFrom: (dic at: ln source) to: (dic at: ln target))].	 "self halt."
	view canvas
		addMenu: 'Start'
		callback: [ 
			view
				addAnimation:
					(NetworkAnimationOnMap new
						view: view;
						messages: aTimeNodeMessages) ].
	view canvas addMenu: 'In' callback: [ RTZoomInMove on: view ].
	view canvas addMenu: 'Out' callback: [ RTZoomOutMove on: view ].
	view @ RTDraggableView @ RTZoomableView.
	view open.
	view canvas camera focusOnCenterScaled