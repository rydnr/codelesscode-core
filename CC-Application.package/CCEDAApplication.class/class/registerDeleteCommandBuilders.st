setup - commands
registerDeleteCommandBuilders
	| builder |
	builder := ATSDeleteCommandBuilder new.
	EDACommandBuilderRegistry
		addBuilder: builder forCommand: #DELETE_PROJECT