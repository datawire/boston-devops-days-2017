#!/usr/bin/env bash

node_dns_name="bdd.datawire.io"

hello_port="$(kubectl get service -n $1 hello -o jsonpath='{.spec.ports[0].nodePort}')"

curl -4v http://$node_dns_name:$hello_port/quote
