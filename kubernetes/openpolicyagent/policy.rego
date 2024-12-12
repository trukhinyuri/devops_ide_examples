package kubernetes.admission

deny[msg] {
  input.request.kind.kind == "Pod"
  input.request.object.spec.containers[_].image == "latest"
  msg = "Using 'latest' tag is not allowed."
}