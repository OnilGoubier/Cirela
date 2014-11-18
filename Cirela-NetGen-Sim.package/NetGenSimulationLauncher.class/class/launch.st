executing
launch

	| env path lib sim |
	
	env := OSProcess thisOSProcess environment copy.
	path := (env at: #PATH), ':/usr/local/kroc/bin/'.
	env at: #PATH put: path.
	lib := '/usr/local/kroc/lib/'.
	env at: #LD_LIBRARY_PATH put: lib.
	sim :=self new.
	sim streamIn: (PipeableOSProcess command: '/home/onil/Smalltalk/Projects/testQuickMap1/Generated/someNetwork' environment: env) output.
	^sim