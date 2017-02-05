#!/bin/bash

DOMAIN=$1

if [ "$DOMAIN" = "" ]
then
       dig +short -x $(dig +short $DOMAIN | grep "^[0-9]*\.") ;
       exit $?
fi
