# Rsyslog [![Build Status](https://travis-ci.org/sipf-infrastructure/rsyslog.png?branch=master)](https://travis-ci.org/sipf-infrastructure/rsyslog)

## Installation du module

Dans le répertoire '/etc/puppet/modules', lancez les commandes suivantes :
```bash
$ mkdir rsyslog
$ cd rsyslog
$ git clone https://github.com/sipf-infrastructure/rsyslog.git .
```

## Utilisation

Dans le fichier '/etc/puppet/manifests/site.pp', on définit ce qui suit :
```ruby
node default {
  # Pour les serveurs devant centraliser leurs logs
  class { 'rsyslog':
    server => 'log.server.example.com',
  }
}
```
Le paramètre **server** permet de spécifier le serveur qui doit centraliser vos logs. Si le nom spécifié est le fqdn de la machine sur lesquel ce module est appliqué, alors cette machine centralise les logs et la configuration est modifiée en conséquence.

## A faire

- Ajouter le support REPL/SSL/TLS
