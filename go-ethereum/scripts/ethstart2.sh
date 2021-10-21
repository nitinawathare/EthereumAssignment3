rm -r /home/sourav/test-eth4/geth/chaindata/;
rm -r /home/sourav/test-eth4/geth/lightchaindata/;
rm -r /home/sourav/test-eth4/geth/nodes/;
rm -r /home/sourav/test-eth4/geth/ethash/;
rm /home/sourav/test-eth4/geth/LOCK;
rm /home/sourav/test-eth4/geth/transactions.rlp;
/home/sourav/go-ethereum/build/bin/geth --datadir /home/sourav/test-eth4 --rpc --rpcport=1800 --networkid=1248 --port=1900 --behavior 1 --hashpower 50.14 --nodekey=nk4.txt init /home/sourav/genesis.json
gnome-terminal --geometry 90x25+1300+0 -- bash startethIpc.sh 4
/home/sourav/go-ethereum/build/bin/geth --datadir /home/sourav/test-eth4 --rpc --rpcport=1800 --networkid=1248 --port=1900 --behavior 1 --hashpower 50.14 --gcmode archive --nodekey=nk4.txt --verbosity 3 --allow-insecure-unlock --unlock 0,1 --password password.txt