default: diff

diff:
	helmfile --environment dev diff

sync:
	helmfile --environment dev sync

enc:
	helm secrets enc apps/bitwarden/dev-secrets.yaml
	helm secrets enc apps/cloudflare-dyndns/dev-secrets.yaml
	helm secrets enc apps/nextcloud/dev-secrets.yaml
	helm secrets enc apps/plex/dev-secrets.yaml

dec:
	helm secrets dec apps/bitwarden/dev-secrets.yaml
	helm secrets dec apps/cloudflare-dyndns/dev-secrets.yaml
	helm secrets dec apps/nextcloud/dev-secrets.yaml
	helm secrets dec apps/plex/dev-secrets.yaml
