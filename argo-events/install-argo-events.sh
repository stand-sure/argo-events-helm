#! /usr/bin/env bash
dir="${BASH_SOURCE%/*}"
helm upgrade --install argo \
  --namespace argo-events \
  --create-namespace \
  --values "$dir/value-overrides.yaml" \
  argo/argo-events \
  --version 2.4.1

