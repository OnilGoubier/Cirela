animation
refresh
	tempTxt isEmpty
		ifFalse: [ 
			tempTxt keys
				do: [ :a | 
					(tempTxt at: a) hasCompleted
						ifTrue: [ 
							self view removeElement: a.
							tempTxt removeKey: a ] ] ]
		ifTrue: [ 
			index logCr.
			(messages at: index printString ifAbsent: [ ^ self ])
				do: [ :each | 
					| txt anim |
					txt := (RTLabel new
						text: each message asString;
						color: (Color red alpha: 0.7)) element.
					txt translateTo:  each incomingLink  source point.
					view add: txt.
					anim := RTLinearMove to: (each incomingLink  target point) during: 5 on: txt.
					tempTxt at: txt put: anim.
					view addAnimation: anim ].
			index := index + 1 ].
	view signalUpdate