curl --data-binary '{"jsonrpc": "1.0", "id": "curltest", "method": "createwallet", "params": ["testwallet"]}' -H 'content-type: text/plain;' http://alice:password@localhost:18443/
ADDR=$(curl -s --data-binary '{"jsonrpc": "1.0", "id": "curltest", "method": "getnewaddress", "params": [""]}' -H 'content-type: text/plain;' http://alice:password@localhost:18443/ | jq -r '.result')
echo $ADDR
curl --data-binary '{"jsonrpc": "1.0", "id": "curltest", "method": "generatetoaddress", "params": [120, "'$ADDR'"]}' -H 'content-type: text/plain;' http://alice:password@localhost:18443/
