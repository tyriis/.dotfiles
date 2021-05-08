export KUBE_CONFIG_PATH=$HOME/.kube/config
[[ -f /usr/bin/kubectl ]] && source <(kubectl completion zsh)
[[ -f /usr/bin/helm ]] && source <(helm completion zsh)
[[ -f /usr/bin/flux ]] && source <(flux completion zsh)