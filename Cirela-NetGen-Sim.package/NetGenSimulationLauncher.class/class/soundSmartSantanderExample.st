examples
soundSmartSantanderExample

	"
	self soundSmartSantanderExample
	"
	
	|sim|
	sim := self launch: '/home/onil/Smalltalk/Projects/testQuickMap1/test_simple_Mux_someNetwork/someNetwork' 
			withNetworkFrom:  '/home/onil/Smalltalk/Projects/testQuickMap1/test_simple_Mux_someNetwork/smartsantander.net'.
	sim networkGeometry animatedSimulationOnMap: sim timeNodeMessages.
	^sim