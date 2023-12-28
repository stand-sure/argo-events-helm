#!/usr/bin/env bash
dir="${BASH_SOURCE%/*}"
kubectl apply --filename "$dir/rabbitmq-resources" --namespace argo-events