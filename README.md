# k3s
k3s on Raspberry Pi

## helm/helmfile setup
```sh
brew install helm
brew install helmfile
brew install sops

# helm diff
helm plugin install https://github.com/databus23/helm-diff --version v3.1.1

# encrypt/decrypt helm secrets
helm plugin install https://github.com/futuresimple/helm-secrets
```

## helm deploys
```sh
# create new helmfile.yaml in /apps/svcname, then
make diff
make sync
```

## secrets
```sh
# run this to encrypt all secret files
make enc

# run this to decrypt all secret files
make dec
```