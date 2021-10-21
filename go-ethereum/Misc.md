/params: 
	- Gas usage
	- boot node ip addresses
	- fork related info
	- Network information like bloom size

/node:
	node.go:
		- start a node
		- stop a node
		- fetch appropriate data-dir
		- start RPC, IPC
	- various RPC, WS api's
	- default data-dir locations

/mobile:
	- For android/iOS mobile support

/miner:
	- miner.go:
		- creates a worker, who does the heavy lifting
		- Handles node syncing
	- worker.go:
		- maintains current state, TxPool and Blockchain info
		- Handles various channel, sealing intervals
		- Subscribe and Unsubscribe various events
		- runs 4 loops to handle different sorts of stuff
	- unconfirmed.go:
		- Handles various unconfirmed blocks
	- stress_clique.go:
		- test Clique consensus engine
	- stress_ethhash.go:
		- test Ethash consensus engine