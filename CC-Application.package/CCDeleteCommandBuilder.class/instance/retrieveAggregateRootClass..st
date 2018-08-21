protected
retrieveAggregateRootClass: commandParams
	| result meta |
	meta := commandParams at: #meta ifAbsent: [ nil ].
	meta
		ifNil: [ result := nil ]
		ifNotNil: [ :metaSection | 
			| type |
			type := metaSection at: #type ifAbsent: [ nil ].
			type
				ifNil: [ result := nil ]
				ifNotNil: [ :commandName | result := self retrieveAggregateRootClassFromCommandName: commandName ] ].
	^ result