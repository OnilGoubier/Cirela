building
buildLinksFrom: aDictionary

	| arr node lk1 lk2 |
	links := OrderedCollection new.
	aDictionary keys do: 
		[ :k | 
		 	arr := aDictionary at: k.			
			arr do: [:each | node := self findNodeWithName: k.
				lk1 := NetworkLink createLinkWithSource: node target: (self findNodeWithName: each ).
				node outputLinks add: lk1.
				self links add: lk1.
				"self halt."
				lk2 := NetworkLink createLinkWithSource: (self findNodeWithName: each ) target: node.
				node inputLinks add: lk2.].
			].
 	
	

