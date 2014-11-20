baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec
				package: 'Cirela-OSM';
				group: 'default' with: #('Cirela-OSM') ]