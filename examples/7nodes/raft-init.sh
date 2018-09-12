#!/bin/bash
set -u
set -e

banner "Quorum"

rm -rf qdata
mkdir -p qdata/logs

echo "[*] Sicoob - Sistema de Cooperativas de Crédito do Brasil (permissioned)"
mkdir -p qdata/bancoob/{keystore,geth}
cp permissioned-nodes.json qdata/bancoob/static-nodes.json
cp permissioned-nodes.json qdata/bancoob/
cp keys/key1 qdata/bancoob/keystore
cp raft/nodekey1 qdata/bancoob/geth/nodekey
geth --permissioned --datadir qdata/bancoob --rpc --rpcaddr "0.0.0.0" --rpccorsdomain "*"  init genesis.json

echo "[*] Banco do Brasil (permissioned)"
mkdir -p qdata/bb/{keystore,geth}
cp permissioned-nodes.json qdata/bb/static-nodes.json
cp permissioned-nodes.json qdata/bb/
cp keys/key2 qdata/bb/keystore
cp raft/nodekey2 qdata/bb/geth/nodekey
geth --permissioned --datadir qdata/bb --rpc --rpcaddr "0.0.0.0" --rpccorsdomain "*"  init genesis.json

echo "[*] Santander (permissioned)"
mkdir -p qdata/santander/{keystore,geth}
cp permissioned-nodes.json qdata/santander/static-nodes.json
cp permissioned-nodes.json qdata/santander/
cp keys/key6 qdata/santander/keystore
cp keys/key3 qdata/santander/keystore
cp raft/nodekey3 qdata/santander/geth/nodekey
geth --permissioned --datadir qdata/santander --rpc --rpcaddr "0.0.0.0" --rpccorsdomain "*"  init genesis.json

echo "[*] Bradesco (permissioned)"
mkdir -p qdata/bradesco/{keystore,geth}
cp permissioned-nodes.json qdata/bradesco/static-nodes.json
cp permissioned-nodes.json qdata/bradesco/
cp keys/key4 qdata/bradesco/keystore
cp raft/nodekey4 qdata/bradesco/geth/nodekey
geth --permissioned --datadir qdata/bradesco --rpc --rpcaddr "0.0.0.0" --rpccorsdomain "*"  init genesis.json

echo "[*] Caixa Econômica Federal"
mkdir -p qdata/caixa/{keystore,geth}
cp all-nodes.json qdata/caixa/static-nodes.json
cp keys/key5 qdata/caixa/keystore
cp raft/nodekey5 qdata/caixa/geth/nodekey
geth --datadir qdata/caixa --rpc --rpcaddr "0.0.0.0" --rpccorsdomain "*"  init genesis.json

echo "[*] Safra"
mkdir -p qdata/safra/{keystore,geth}
cp all-nodes.json qdata/safra/static-nodes.json
cp raft/nodekey6 qdata/safra/geth/nodekey
cp keys/key7 qdata/safra/keystore
geth --datadir qdata/safra --rpc --rpcaddr "0.0.0.0" --rpccorsdomain "*"  init genesis.json

echo "[*] BNDES Banco Nacional de Desenvolvimento Econômico e Social "
mkdir -p qdata/bndes/{keystore,geth}
cp all-nodes.json qdata/bndes/static-nodes.json
cp raft/nodekey7 qdata/bndes/geth/nodekey
cp keys/key8 qdata/bndes/keystore
geth --datadir qdata/bndes --rpc --rpcaddr "0.0.0.0" --rpccorsdomain "*"  init genesis.json

#Initialise Tessera configuration
./tessera-init.sh