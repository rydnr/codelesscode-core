setup - events
setupEventProducer
	| eventPublisher eventSerializer |
	eventPublisher := EDAEventStompTopicPublisher new.
	eventSerializer := ATSJsonEventSerializer new.
	self
		eventProducer:
			(ATSEventProducer
				publisher: eventPublisher
				serializer: eventSerializer
				announcer: self eventAnnouncer)