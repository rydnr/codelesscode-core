setup - commands
setupCommandConsumerWithCommandListener: arg1
	| tmp1 |
	self flag: #TODO.
	arg1 client debug: true.
	tmp1 := ATSJsonCommandMaterializer new.
	self
		commandConsumer:
			(EDACommandConsumer
				busListener: arg1
				commandMaterializer: tmp1
				commandDispatcher: self commandDispatcher)