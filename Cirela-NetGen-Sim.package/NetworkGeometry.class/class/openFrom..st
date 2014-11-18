opening
openFrom: aFile 

	| myNetwork       | 
	
	myNetwork := self createFromFile: aFile.
	myNetwork open.