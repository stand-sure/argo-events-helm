#!/usr/bin/env bash
dir="${BASH_SOURCE%/*}"
kubectl apply -f "$dir/argo-events-resources" --namespace argo-events