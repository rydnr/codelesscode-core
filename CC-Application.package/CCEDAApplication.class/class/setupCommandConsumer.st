setup - commands
setupCommandConsumer
	self registerCommandBuilders.
	self registerSpecificCommandBuilders.
	^ self setupCommandConsumerWithCommandListener: self setupCommandListener