rm -r /home/sourav/test-eth3/geth/chaindata/;
rm -r /home/sourav/test-eth3/geth/lightchaindata/;
rm -r /home/sourav/test-eth3/geth/nodes/;
rm -r /home/sourav/test-eth3/geth/ethash/;
rm /home/sourav/test-eth3/geth/LOCK;
rm /home/sourav/test-eth3/geth/transactions.rlp;
/home/sourav/go-ethereum/build/bin/geth --datadir /home/sourav/test-eth3 --rpc --rpcport=1876 --networkid=1248 --port=1978 --hashpower 50.04 --behavior 0 --nodekey=nk3.txt init /home/sourav/genesis.json
gnome-terminal --geometry 90x25+1300+1550 -- bash startethIpc.sh 3
/home/sourav/go-ethereum/build/bin/geth --datadir /home/sourav/test-eth3 --rpc --rpcport=1876 --networkid=1248 --port=1978 --hashpower 50.04 --behavior 0 --gcmode archive --nodekey=nk3.txt --verbosity 3 --allow-insecure-unlock --unlock 0,1 --password password.txt