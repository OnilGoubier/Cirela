instance creation
createNodeFrom: aString

	|re arr|
	
	re := '(\w*)\s*{\s*(.*)\s*}.*\(\s*(\d*\s*@\s*\d*)\s*\).*\(\s*(\d*)\s*\)' asRegex.
	re search: aString.
	arr := (re subexpression: 3) subStrings: ','.
	arr do: [ :each| each trim ].
	^self new name: (re subexpression: 2); point: (re subexpression: 4); range: (re subexpression: 5).
	