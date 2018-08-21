helper
listAllContractFiles: type forVersion: anInteger
	^ self listAllContractFiles: type forVersion: anInteger inBasefolder: FileSystem workingDirectory / 'contracts' / 'core'