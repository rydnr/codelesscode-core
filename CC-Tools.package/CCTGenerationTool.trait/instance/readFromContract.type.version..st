helper
readFromContract: aString type: type version: anInteger
	^ self
		readFromContract: aString
		type: type
		version: anInteger
		inBasefolder: FileSystem workingDirectory / 'contracts' / 'core'