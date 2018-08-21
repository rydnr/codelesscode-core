protected
retrieveAggregateRootClassFromCommandName: commandName
	| result |
	result := self aggregateRootClassDict at: commandName ifAbsent: [ nil ].
	result
		ifNil: [ Transcript
				print: self class greaseString;
				print: ' does not currently know the aggregate root class for ';
				print: commandName;
				print: ' commands. Check ';
				print: self class greaseString;
				print: '>>initializeAggregateRootClassMappings';
				cr.
			EDACommandError signal ].
	^ result