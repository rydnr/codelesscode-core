protected
findCreatedEventByProjectKey: aKey
	^ self
		findFirstEventOf: (self findEventsByProjectKey: aKey)
		matchingClass: CCProjectCreated