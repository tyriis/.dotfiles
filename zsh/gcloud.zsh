[[ -f /usr/bin/gcloud ]] && source /opt/google-cloud-sdk/completion.zsh.inc
[[ -f /usr/bin/gcloud ]] && source /opt/google-cloud-sdk/path.zsh.inc
# export GOOGLE CLOUD SDK python runtime
[[ -f /usr/bin/gcloud ]] && export CLOUDSDK_PYTHON=/usr/bin/python2