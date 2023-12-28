# Argo Workflows #

## Installing the argo CLI tool ##

See https://github.com/argoproj/argo-workflows/releases/tag/v3.5.2

*Note*: the tool is optional: see https://argoproj.github.io/argo-workflows/walk-through/argo-cli/

## Installing Argo Workflows ##

You can follow the instructions in the link, *supra.*, or you can run the `install-argo-workflows.sh` script in this folder.

The script configures the workflow service to use a particular account so that you do not run into permissions issues.

## Testing ##

```yaml
# submit a workflow -- this should work in any namespace if you used the install script

argo submit https://raw.githubusercontent.com/argoproj/argo-workflows/master/examples/hello-world.yaml --watch

# checking the logs
kubectl logs --selector workflows.argoproj.io/completed=true
```