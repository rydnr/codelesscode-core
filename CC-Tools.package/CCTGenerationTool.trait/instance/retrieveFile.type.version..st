helper
retrieveFile: aString type: type version: anInteger
	^ self
		retrieveFile: aString
		type: type
		version: anInteger
		inBasefolder: FileSystem workingDirectory / 'contracts' / 'core'