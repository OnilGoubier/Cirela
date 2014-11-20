converting
extractMessagesFromStream: aStream 

	|anArray |
	anArray := aStream subStrings: (Array with: Character lf with: Character cr).
	self streamIn: aStream.
	anArray do: [ :each| | sarr nd nm t | 
					sarr := each  substrings.
					nd := self networkGeometry nodes at: ((sarr at: 1) asInteger +1).					
					2 to: (sarr size) by: 2 do: 
						[ :i | nm := NetworkNodeMessage new node: nd.
							nm message: (sarr at: (i+1)); incomingLink:  (nd inputLinks at: (i-(i/2))).
							t := sarr at: i.
							(self timeNodeMessages keys includes: t )
								ifFalse: [
									self timeNodeMessages at: t put: (nm asOrderedCollection )]
								ifTrue: [ (self timeNodeMessages at: t) add: nm.
									]. 
								]]. 