instance creation
createLinkWithSource: aNetworkNode target: anotherNetworkNode
	self assert: aNetworkNode name ~= anotherNetworkNode name.
	^ self new
		source: aNetworkNode;
		target: anotherNetworkNode