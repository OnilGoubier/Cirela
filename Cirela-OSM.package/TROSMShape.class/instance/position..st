accessing
position: aPosition
	super position: aPosition.
	rectangle ifNotNil: [ copyright position: aPosition + rectangle corner - (copyright extent / 2) ]