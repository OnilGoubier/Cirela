private
translatedRectangle
	^ (matrix transform: rectangle origin) corner: (matrix transform: rectangle corner)