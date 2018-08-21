helper
isAggregate: word
	^ self
		isAggregate: word
		for: CCEDAApplication commandClassPrefix
		from: CCEDAApplication predefinedAggregates