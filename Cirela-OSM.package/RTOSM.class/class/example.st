examples
example
	"This example center the view on lat 0, lon 0."

	"self example"

	| v s e |
	v := RTView new.
	s := RTOSM new extent: 500 @ 500.
	e := s element @ RTDraggable.
	v add: e.
	v add: (RTBox new size: 40) element @ RTHighlightable @ RTDraggable.
	v canvas addMenu: 'In' callback: [ RTZoomInMove on: v ].
	v canvas addMenu: 'Out' callback: [ RTZoomOutMove on: v ].
	v @ RTDraggableView.
	v open