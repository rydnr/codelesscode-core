metacello tool support
pharoEdaRepositoryFolder
	| tmp1 tmp2 tmp3 tmp4 |
	tmp1 := FileSystem workingDirectory.
	tmp2 := tmp1 fullPath.
	tmp3 := (tmp1 fullPath / 'pharo-eda') asFileReference exists.
	tmp4 := tmp3
		ifTrue: [ tmp2 / 'pharo-eda' ]
		ifFalse: [ tmp1 path segments last = 'core'
				ifTrue: [ tmp2 / 'pharo-eda' ]
				ifFalse: [ tmp2 / 'core' / 'pharo-eda-common' ] ].
	^ tmp4