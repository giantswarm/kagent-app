##@ Vendoring

# CRD source files vendored under helm/kagent/crds (kagent.dev + kmcp MCPServer).
# Unlike agent-sandbox (which injects keep at render time from a pristine
# files/crds), these ship in the literal crds/ dir for the app-owned-CRDs pattern
# (Flux `crds: CreateReplace`), so the keep annotation must be baked into the
# committed files. `vendir sync` overwrites them pristine, so re-inject afterwards.
YQ ?= yq

.PHONY: sync
sync: ## Re-vendor the upstream kagent chart + CRDs (pinned in vendir.lock.yml) and re-inject the keep annotation.
	vendir sync
	@echo "Injecting helm.sh/resource-policy: keep into vendored CRDs..."
	@find helm/kagent/crds -name '*.yaml' -exec $(YQ) -i '.metadata.annotations."helm.sh/resource-policy" = "keep"' {} \;
	@echo "Synced upstream chart (helm/kagent/charts/kagent) and CRDs (helm/kagent/crds) with keep injected."
	@echo "Run 'make sync' with mikefarah yq v4 on PATH (set YQ=... to override)."
