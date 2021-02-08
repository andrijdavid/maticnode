#!/bin/bash

sentry=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' matic_sentry)
validator=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' matic_validator)

ssh-keygen -R $sentry
ssh-keygen -R $validator 

ssh-copy-id root@$sentry 
ssh-copy-id root@$validator

echo "Sentry IP: " $sentry 
echo "Validator IP: " $validator
