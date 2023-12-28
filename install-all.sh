#!/usr/bin/env bash
myDir="${BASH_SOURCE%/*}"
. "$myDir/argo-workflows/install-argo-workflows.sh"
. "$myDir/argo-events/install-argo-events.sh"
. "$myDir/getting-started/install-argo-events-resources.sh"