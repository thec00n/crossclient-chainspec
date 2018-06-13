echo "*** Clean up base directory ***"
rm -rf ./parity/*

echo "*** Copy keys ***"
mkdir -p ./parity/keys/CrossClient/CrossClient/
cp ./keys/* ./parity/keys/CrossClient/CrossClient/

echo "*** Start Parity ***"
parity --chain parity.json  --log-file ./logs/p.logs -lstate=trace,own_tx=trace --port 31337 --jsonrpc-port 8545 --keys-path "./parity/keys/CrossClient/" --etherbase "0x3d0077583730a46f22d6f1f50f08b9d156b06bf1" --unlock "0x3d0077583730a46f22d6f1f50f08b9d156b06bf1" --password pw  --bootnodes enode://f0e38f26f95c722b4ab27ac8dfbd214280220e1768a19027309f6d12af749cca02fcbbf859dc84b3af05f98de433f78684d4d308c2d52aa357d5f4e0ae08cb4f@127.0.0.1:31333  --jsonrpc-apis "all" --jsonrpc-cors "*" --jsonrpc-hosts "all" --jsonrpc-interface "all" -d ./parity/

