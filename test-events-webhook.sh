#!/usr/bin/env bash

# port-forward in background based on https://stackoverflow.com/a/68824178/93940
set -e

local_port="12000"
namespace="argo-events"
resource="service/webhook-eventsource-svc"

kubectl port-forward --namespace "$namespace" "$resource" "$local_port" > /dev/null 2>&1 &

pid=$!
echo pid: $pid

# kill the port-forward regardless of how this script exits
trap '{
    echo killing $pid
    kill $pid
}' EXIT

# wait for $local_port to become available
while ! nc -vz localhost $local_port > /dev/null 2>&1 ; do
    #echo waiting for port...
    sleep 0.1
done

curl -d '{"message":"this is my first webhook"}' -H "Content-Type: application/json"  "http://localhost:$local_port/example" -v

sleep 1
kubectl get workflows --selector events.argoproj.io/sensor=webhook,events.argoproj.io/trigger=webhook-workflow-trigger
