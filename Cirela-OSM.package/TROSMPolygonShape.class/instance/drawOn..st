drawing
drawOn: athensCanvas
	| pt |
	pt := athensCanvas pathTransform.
	pt
		restoreAfter: [ 
			pt scaleBy: matrix sx @ matrix sy.
			athensCanvas
				setPaint: color;
				drawShape: self path.
			athensCanvas setStrokePaint: strokePaint.
			athensCanvas paint width: 1.0 / canvas camera scale.
			athensCanvas drawShape: self path ]