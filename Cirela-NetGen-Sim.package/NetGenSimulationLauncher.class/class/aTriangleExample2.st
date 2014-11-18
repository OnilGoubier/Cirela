examples
aTriangleExample2
	"
	self aTriangleExample2
	"

	| sim |
	sim := self new.
	sim networkGeometry: (NetworkGeometry new buildNetFrom: self aTriangleNet).
	sim extractMessagesFromStream: self aTriangleOutput.
	sim networkGeometry animatedSimulation: sim timeNodeMessages.
	^ sim