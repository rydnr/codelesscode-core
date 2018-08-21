helper
isAggregate: word for: appPrefix from: predefinedAggregates
	^ self
		isAggregate: word
		for: appPrefix
		from: predefinedAggregates
		usingEventClassPrefix: CCEDAApplication eventClassPrefix