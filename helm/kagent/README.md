# kagent

Giant Swarm packaging of the upstream kagent-dev/kagent controller (Kubernetes-native AI agent runtime). The upstream app chart is vendored as a subchart; the kagent.dev and kmcp CRDs ship in this chart's crds/ directory so the app owns its CRDs (delivered via Flux CreateReplace).

**Homepage:** <https://github.com/giantswarm/kagent-app>

## Source Code

* <https://github.com/giantswarm/kagent-app>
* <https://github.com/kagent-dev/kagent>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| file://charts/kagent | kagent | 0.9.9 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| kagent.controller.agentImage.repository | string | `"kagent-app"` |  |
| kagent.controller.image.repository | string | `"kagent-controller"` |  |
| kagent.controller.skillsInitImage.repository | string | `"kagent-skills-init"` |  |
| kagent.fullnameOverride | string | `"kagent"` |  |
| kagent.namespaceOverride | string | `"kagent"` |  |
| kagent.registry | string | `"gsoci.azurecr.io/giantswarm"` |  |
| kagent.tag | string | `"0.9.9"` |  |
| kagent.ui.image.repository | string | `"kagent-ui"` |  |
