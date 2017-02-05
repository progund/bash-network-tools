#!/bin/bash

DOMAIN=$1

if [ "$DOMAIN" != "" ]
then
       dig +short -x $(dig +short $DOMAIN | grep "^[0-9]*\.") ;
       exit $?
else
    echo "Missing domain" 1>&2
    exit 1
fi
