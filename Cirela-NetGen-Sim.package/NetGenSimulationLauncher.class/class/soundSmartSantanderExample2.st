examples
soundSmartSantanderExample2
	"
	self soundSmartSantanderExample2
	"

	| sim |
	sim := self new.
	sim networkGeometry: (NetworkGeometry new buildNetFrom: self aSmartSantanderNet).
	sim extractMessagesFromStream: self aSmartSantanderOutput.
	sim networkGeometry animatedSimulationOnMap: sim timeNodeMessages.
	^ sim