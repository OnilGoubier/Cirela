building
buildNetFrom: aStream

	|arr re sarr1  sarr3 tempLinks tempNodes|
	
	arr := aStream subStrings: Character lf asString.
	tempLinks := Dictionary new.
	re := '(\w*)\s*{\s*(.*)\s*}.*\(\s*(\-*\d*\s*@\s*\-*\d*)\s*\).*\(\s*(\d*)\s*\)' asRegex.
	tempNodes := OrderedCollection new.
	3 to: (arr size) do: 
		[ :i | | aPoint |
			re search: (arr at:i).
			aPoint := Compiler evaluate: (re subexpression: 4).
			(self isLatLon: (arr at: 1)) ifTrue:
					[ aPoint := aPoint/10000.0 asFloat ].
			tempNodes add:  (NetworkNode createNodeWithName:  ((re subexpression: 2) trim)
										point: aPoint
										range: (re subexpression: 5) asInteger ).
			sarr1 := ((re subexpression: 3) subStrings: ',') collect: [:e | e trim].
			sarr3 := sarr1 sortedAs: [ :a :b | (a  splitInteger  at: 2 ) < (b splitInteger  at: 2)].
			"self halt."
			tempLinks at: ((re subexpression: 2) trim) put: sarr3.
			].
	self nodes: (tempNodes sortedAs: [:a :b | (a name splitInteger  at: 2) < (b name splitInteger  at: 2)]).
	self buildLinksFrom: tempLinks .
		
	
