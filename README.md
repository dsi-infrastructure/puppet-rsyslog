## Utilisation du module

* Ce module utilise les "hiera", veuillez créer un répertoire "rsyslog" dans le dossier hieradata.
* Dans ce nouveau répertoire veuillez créer un fichier portant le nom suivant : srv1.dev.yaml
* Ce fichier doit contenir ce qui suit :

```
---
rsyslog::logserver : 'FQDN'
```

