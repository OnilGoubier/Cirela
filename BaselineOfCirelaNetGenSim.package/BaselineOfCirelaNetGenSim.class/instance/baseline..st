baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec
				package: 'Cirela-NetGen-Sim';
				group: 'default' with: #('Cirela-NetGen-Sim') ]