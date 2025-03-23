# Bitshala Developer Summit - Silent Payments

## Setting up the environment

### Pre-requisites

- Install Docker Desktop on your machine ([installation link](https://www.docker.com))
- Install the latest version of NodeJS ([installation link](https://nodejs.org/en/download))

### Cloning the repositories

- Create a new directory for the demo and navigate into it:
```bash
mkdir bitplebs-silent-payments-demo
cd bitplebs-silent-payments-demo
```

- Clone the demo repository ([link](https://github.com/Bitshala-Incubator/silent-payments-demo))
```
https://github.com/Bitshala-Incubator/silent-payments-demo
 ```

- Clone the silent payment indexer repository ([link](https://github.com/Bitshala-Incubator/silent-pay-indexer))
```bash
https://github.com/Bitshala-Incubator/silent-pay-indexer
```
- Clone the CLI repository ([link](https://github.com/notTanveer/sp-cli))
```bash
https://github.com/notTanveer/sp-cli
```

### Setting up Bitcoin Core, Esplora and Silent Payments Indexer

- Cd into the silent-pay-indexer directory:

```bash
cd silent-pay-indexer
```

- Run the following command to build the Docker images:

```bash
docker build -t silentpay-indexer:latest .
```

- Cd into the silent-payments-demo directory:

```bash
cd ../silent-payments-demo
```

- Run the following command to start Bitcoin Core, Esplora and Silent Payments Indexer:

```bash
docker compose up -d
```

- Verify that Bitcoin Core, Esplora and Silent Payments Indexer are running:

```bash
docker ps
```

- The output should show two containers running:

```bash
CONTAINER ID   IMAGE                      COMMAND                  CREATED          STATUS                             PORTS                                                                      NAMES
5e9599943621   silentpay-indexer:latest   "sh -c 'npm run migr…"   26 seconds ago   Up 24 seconds                      0.0.0.0:3000->80/tcp                                                       silent-payments-demo-indexer-1
a5a3794932ef   blockstream/esplora        "bash -c '/srv/explo…"   26 seconds ago   Up 24 seconds (health: starting)   0.0.0.0:18443->18443/tcp, 0.0.0.0:50001->50001/tcp, 0.0.0.0:8094->80/tcp   silent-payments-demo-esplora-1
```

- Verify that the indexer running on `http://localhost:3000`:

```bash
curl http://localhost:3000/health
```

- The output should show:
```txt
HEALTHY
```

### Setting up and funding a wallet in Bitcoin Core

- Run the setup script to create a wallet and fund it with some Bitcoin:

```bash
/bin/bash setup.sh
```

- Verify that the wallet is created and funded:

```bash
curl --data-binary '{"jsonrpc": "1.0", "id": "curltest", "method": "getbalance", "params": []}' -H 'content-type: text/plain;' http://alice:password@localhost:18443/
```

- The output should show the balance of the wallet:

```json
{"result":1000.00000000,"error":null,"id":"curltest"}
```

## Silent Payments Demo
