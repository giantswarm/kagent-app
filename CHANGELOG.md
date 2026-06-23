# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

- Source the bundled `kagent-tools` tool-server image from
  `gsoci.azurecr.io/giantswarm/kagent-tools` (mirror of
  `ghcr.io/kagent-dev/kagent/tools`) and declare `ephemeral-storage`
  requests/limits on its container, clearing the `restrict-image-registries`
  and `require-emptydir-requests-and-limits` Kyverno audit warnings in the
  `agentic-platform` namespace (giantswarm/giantswarm#36885). Overrides nest
  under `kagent.kagent-tools.tools.*` — the keys the subchart actually reads;
  it does not inherit the parent `kagent.registry`.
- Initial Giant Swarm packaging of the upstream `kagent-dev/kagent` controller
  chart, vendored as a subchart via vendir (pinned `0.9.9`).
- App-owned CRDs: the eight `kagent.dev` CRDs and the `kmcp` `MCPServer` CRD ship
  in `helm/kagent/crds/` with `helm.sh/resource-policy: keep`, delivered via Flux
  `crds: CreateReplace` from the agentic-platform meta-package.

[Unreleased]: https://github.com/giantswarm/kagent-app/tree/main
