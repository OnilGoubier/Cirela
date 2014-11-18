executing
launch: aSimulationCommand withNetworkFrom: aFile

	| env path lib sim |
	
	env := OSProcess thisOSProcess environment copy.
	path := (env at: #PATH), ':/usr/local/kroc/bin/'.
	env at: #PATH put: path.
	lib := '/usr/local/kroc/lib/'.
	env at: #LD_LIBRARY_PATH put: lib.
	sim :=self new.
	sim networkGeometry:  (NetworkGeometry createFromFile:  aFile).
	sim extractMessagesFromStream: (PipeableOSProcess command: aSimulationCommand environment: env) output.
	^sim