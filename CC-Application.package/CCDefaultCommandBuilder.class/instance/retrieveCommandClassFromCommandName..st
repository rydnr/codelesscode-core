building
retrieveCommandClassFromCommandName: commandName
	| result |
	result := commandDictionary at: commandName ifAbsent: [ nil ].
	result
		ifNil: [ Transcript
				print: self class greaseString;
				print: ' does not currently know how to build ';
				print: commandName;
				print: ' commands. Check ';
				print: self class greaseString;
				print: '>>initializeCommandMappings';
				cr.
			EDACommandError signal ].
	^ result