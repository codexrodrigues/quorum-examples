#!/bin/bash
PRIVATE_CONFIG=qdata/c1/tm.ipc geth --exec "loadScript(\"$1\")" attach ipc:qdata/bancoob/geth.ipc