#~/bin/bash

echo "*** remove geth data dir ***"
rm -rf ./geth/geth

echo "*** geth init genesis ***"
geth init --datadir geth  geth.json

echo "*** copy keys over ***"
cp ./keys/* ./geth/keystore/

echo "*** start geth ***"
geth --datadir geth --networkid 1337 --port 31333 --rpcport 8656 --mine --minerthreads 1 --etherbase 0x976d35d3e3a338ceef3f25a9af8ada2f0a72c178 --rpc --rpcaddr 0.0.0.0 --rpccorsdomain "*" --rpcapi "eth,net,web3,debug,personal" --unlock 3d0077583730a46f22d6f1f50f08b9d156b06bf1 --password pw --etherbase 3d0077583730a46f22d6f1f50f08b9d156b06bf1

