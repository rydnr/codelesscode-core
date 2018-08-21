initialization
initializeAggregateRootClassMappings
	| dict |
	dict := self aggregateRootClassDict.
	dict at: #DELETE_PROJECT put: CCProject
