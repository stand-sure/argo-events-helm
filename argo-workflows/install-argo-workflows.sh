#! /usr/bin/env bash
dir="${BASH_SOURCE%/*}"
helm upgrade --install argo-workflows \
  --namespace argo \
  --create-namespace \
  --values "$dir/value-overrides.yaml" \
  argo/argo-workflows \
  --version 0.40.3

