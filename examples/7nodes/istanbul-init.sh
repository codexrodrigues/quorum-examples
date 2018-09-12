#!/bin/bash
set -u
set -e

echo "[*] Cleaning up temporary data directories"
rm -rf qdata
mkdir -p qdata/logs

echo "[*] Configuring node 1"
mkdir -p qdata/bancoob/{keystore,geth}
cp permissioned-nodes.json qdata/bancoob/static-nodes.json
cp permissioned-nodes.json qdata/bancoob/
cp keys/key1 qdata/bancoob/keystore
cp raft/nodekey1 qdata/bancoob/geth/nodekey
geth --datadir qdata/bancoob init istanbul-genesis.json

echo "[*] Configuring node 2"
mkdir -p qdata/bb/{keystore,geth}
cp permissioned-nodes.json qdata/bb/static-nodes.json
cp permissioned-nodes.json qdata/bb/
cp keys/key2 qdata/bb/keystore
cp raft/nodekey2 qdata/bb/geth/nodekey
geth --datadir qdata/bb init istanbul-genesis.json

echo "[*] Configuring node 3"
mkdir -p qdata/santander/{keystore,geth}
cp permissioned-nodes.json qdata/santander/static-nodes.json
cp permissioned-nodes.json qdata/santander/
cp keys/key3 qdata/santander/keystore
cp raft/nodekey3 qdata/santander/geth/nodekey
geth --datadir qdata/santander init istanbul-genesis.json

echo "[*] Configuring node 4 as voter"
mkdir -p qdata/bradesco/{keystore,geth}
cp permissioned-nodes.json qdata/bradesco/static-nodes.json
cp permissioned-nodes.json qdata/bradesco/
cp keys/key4 qdata/bradesco/keystore
cp raft/nodekey4 qdata/bradesco/geth/nodekey
geth --datadir qdata/bradesco init istanbul-genesis.json

echo "[*] Configuring node 5 as voter"
mkdir -p qdata/caixa/{keystore,geth}
cp permissioned-nodes.json qdata/caixa/static-nodes.json
cp permissioned-nodes.json qdata/caixa/
cp keys/key5 qdata/caixa/keystore
cp raft/nodekey5 qdata/caixa/geth/nodekey
geth --datadir qdata/caixa init istanbul-genesis.json

echo "[*] Configuring node 6"
mkdir -p qdata/safra/{keystore,geth}
cp permissioned-nodes.json qdata/safra/static-nodes.json
cp permissioned-nodes.json qdata/safra/
cp keys/key6 qdata/safra/keystore
cp raft/nodekey6 qdata/safra/geth/nodekey
geth --datadir qdata/safra init istanbul-genesis.json

echo "[*] Configuring node 7"
mkdir -p qdata/bndes/{keystore,geth}
cp permissioned-nodes.json qdata/bndes/static-nodes.json
cp permissioned-nodes.json qdata/bndes/
cp keys/key7 qdata/bndes/keystore
cp raft/nodekey7 qdata/bndes/geth/nodekey
geth --datadir qdata/bndes init istanbul-genesis.json

#Initialise Tessera configuration
./tessera-init.sh