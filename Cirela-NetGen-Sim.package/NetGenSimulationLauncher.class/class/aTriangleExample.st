examples
aTriangleExample

	"
	self aTriangleExample
	"
	
	 |sim|
	sim := self launch: '/home/onil/Smalltalk/Projects/testQuickMap1/test_simple_Mux_Triangle/aTriangle' 
			withNetworkFrom:  '/home/onil/Smalltalk/Projects/testQuickMap1/aTriangle.net'.
	sim networkGeometry animatedSimulation: sim timeNodeMessages.
	^sim
