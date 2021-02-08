# Matic Node with Docker

This launch a matic node by providing container with ssh exposed for ansible. This is just meant for testing **environment**. 
Feel free to send a pull request.


Make sure you have docker and docker-compose installed.

`docker-compose up -d`

Follow the tutorial here: https://docs.matic.network/docs/validate/mainnet/validator-guide. 
As IP address use the ip showed by the command `bash scripts/get_ip.sh` and change the default ansible user in `group_vars/all` as `root`.

