setup - commands
setupCommandListener
	| tmp1 |
	tmp1 := EDACommandStompTopicListener new.
	tmp1 client debug: true.
	^ tmp1