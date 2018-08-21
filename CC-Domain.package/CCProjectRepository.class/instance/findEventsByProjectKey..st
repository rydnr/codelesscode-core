protected
findEventsByProjectKey: aKey
	| result criteria |
	criteria := Dictionary new.
	criteria at: 'projectKey' put: aKey.
	result := self eventStore
		findEventsOfAggregate: self aggregateClass
		whereCriteria: criteria.
	^ result