\*installation :
exec install.sh pour creer les fichiers de configuration
une fois finis, lancer 'docker-compose up -d' ou avec docker swarm
lier les dossiers creer avec un lien symbolique (si voulu)


```bash
docker run -i --rm --name certbot \
  -v "letsencrypt-jellyfin:/etc/letsencrypt" \
  -v "$(pwd)/.ovhapi:/.ovhapi" certbot/dns-ovh certonly \
  --dns-ovh --dns-ovh-credentials /.ovhapi \
  --non-interactive --agree-tos \
  --email admin@westbay.fr \
  -d westbay.fr -d *.westbay.fr
```
