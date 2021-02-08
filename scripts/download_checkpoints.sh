#!/bin/bash

aria2c -c -x 16 https://matic-blockchain-snapshots.s3.amazonaws.com/matic-mainnet/heimdall-snapshot-2021-01-12.tar.gz
tar -xzvf heimdall-snapshot-2021-01-12.tar.gz -C data/validator/.heimdalld/data/

aria2c -c -x 16 https://matic-blockchain-snapshots.s3.amazonaws.com/matic-mainnet/bor-snapshot-2021-01-12.tar.gz
tar -xzvf bor-snapshot-2021-01-12.tar.gz -C data/validator/.bor/data/bor/chaindata
