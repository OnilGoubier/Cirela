examples
floodJakartaExample
	"
	self floodJakartaExample
	"

	| sim |
	sim := self new.
	sim networkGeometry: (NetworkGeometry new buildNetFrom: self aJakartaNet).
	sim extractMessagesFromStream: self aJakartaOutput.
	sim networkGeometry animatedSimulationOnMap: sim timeNodeMessages.
	^ sim