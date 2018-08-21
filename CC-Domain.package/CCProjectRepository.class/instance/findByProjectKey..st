api
findByProjectKey: aKey
	| result events |
	events := self findEventsByProjectKey: aKey.
	events
		ifEmpty: [ Transcript
				print: 'WARNING: No project found with ';
				print: (aKey ifNil: [ 'null key' ] ifNotNil: [ :v | 'key ' , v ]);
				print: '.';
				cr.
			result := nil ]
		ifNotEmpty: [ :evts | 
			result := self aggregateClass new.
			result applyEvents: evts ].
	^ result