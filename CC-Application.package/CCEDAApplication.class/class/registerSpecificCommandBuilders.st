setup - commands
registerSpecificCommandBuilders
	| builder |
	builder := CCDefaultCommandBuilder new.
	EDACommandBuilderRegistry
		addBuilder: builder forCommand: #CREATE_PROJECT