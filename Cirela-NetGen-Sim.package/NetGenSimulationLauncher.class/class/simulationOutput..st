executing
simulationOutput: aSimulationCommand
	| env path lib |
	env := OSProcess thisOSProcess environment copy.
	path := (env at: #PATH) , ':/usr/local/kroc/bin/'.
	env at: #PATH put: path.
	lib := '/usr/local/kroc/lib/'.
	env at: #LD_LIBRARY_PATH put: lib.
	^ (PipeableOSProcess command: aSimulationCommand environment: env) output