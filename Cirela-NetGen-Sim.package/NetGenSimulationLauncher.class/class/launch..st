executing
launch: aSimulationCommand

	| env path lib sim |
	
	env := OSProcess thisOSProcess environment copy.
	path := (env at: #PATH), ':/usr/local/kroc/bin/'.
	env at: #PATH put: path.
	lib := '/usr/local/kroc/lib/'.
	env at: #LD_LIBRARY_PATH put: lib.
	sim :=self new.
	sim streamIn: (PipeableOSProcess command: aSimulationCommand environment: env) output.
	^sim