accessing
project
	| tmp2 |
	tmp2 := project.
	^ tmp2
		ifNil: [ self class ensureMetacello.
			project := MetacelloMCProject new
				projectAttributes: self customProjectAttributes.
			(Smalltalk at: #MetacelloVersionConstructor)
				on: self
				project: project.
			project loadType: #linear.
			project ]
		ifNotNil: [ tmp2 ]