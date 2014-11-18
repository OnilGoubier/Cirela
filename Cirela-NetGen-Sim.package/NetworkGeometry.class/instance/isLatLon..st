testing
isLatLon: aString
	" test if aString contains 'latlon', this means the net is on  a map"
	
	
	^'*_latlon' match: aString 
	