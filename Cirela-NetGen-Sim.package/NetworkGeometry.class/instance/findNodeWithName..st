accessing
findNodeWithName: aString

	|nds node|
	nds := self nodes select: [ :nd | nd name = aString ].
	"self halt."
	nds isEmpty ifFalse: [ node := nds at: 1 ].
	^node