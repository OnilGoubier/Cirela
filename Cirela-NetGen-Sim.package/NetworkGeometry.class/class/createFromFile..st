instance creation
createFromFile: aFileName
	"create a netgen network from file"

	|stream  |
	
	stream := (StandardFileStream oldFileNamed: aFileName) contents.
	^self new buildNetFrom: stream
	