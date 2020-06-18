# M300-Service Informationen
Dieses Repository wird als Cloud-Speicher für das Modul 300 verwendet.


# Linux

Linux ist ein Betriebssystem und eine IT-Infrastrukturplattform. Es ist Open Source
und basiert auf dem Design von Unix. Linux hat sich sehr gut durchgesetzt und ist 
nun zum Betriebssystem mit der grössten Nutzerbasis geworden. Als beste Eigenschaft
von Linux zählt das es Open Source, also quelloffen ist. Das beudeutet, jeder kann
die Software ausführen, teilen und modifizieren. 


# Virtualisierung

Bei der Virtualisierung wird Software benutzt, um Hardwarefunktionen zu simulieren. 
Daraus resultiert, dass mehrere virtuelle Systeme, Betriebssysteme und Anwendungen
auf nur einem Server ausgeführt werden können. Vorteile die dabei entstehen sind:
Skalierbarkeit und eine höhere Effizienz.


# Vagrant

Mit Vagrant können virtuelle Maschinen erstellt und verwaltet werden. Das wichtigste
dabei ist, dass Vagrant eine sehr einfache Softwareverteilung (Deployment) ermöglicht.
Vagrant steuert man über die Shell. Hier ein paar wichtige Befehle:

## Wichtige Befehle

Download Vagrant image
```
$ vagrant box add hashicorp/precise64
```

Remove Vagrant image
```
$ vagrant box remove hashicorp/precise64
```

List downloaded boxes
```
$ vagrant box list
```

start and provision VM
```
$ vagrant up
```

Show status of entire Vagrant environment
```
$ vagrant global-status
```

Show status of current Vagrant box
```
$ vagrant status
```

Re-start a running Vagrant VM
```
$ vagrant reload
```

SSH to current Vagrant VM
```
$ vagrant ssh
```

Remove current VM
```
$ vagrant destroy
```

Push Snapshot of current state to stack
```
$ vagrant snapshot push
```

Pop last snapshot and restore state
```
$ vagrant snapshot restore
```

List snapshots
```
$ vagrant snapshot list
```

Print Vagrant Version
```
$ vagrant version
```

Show port mapping between guest and host
```
$ vagrant port
```


# Versionsverwaltung / Git

Die Versionsverwaltung protokolliert alle Änderungen an einer oder mehreren Dateien
innerhalb eines Repositorys. Somit kann später auf alle Versionen zugegriffen werden
und es ist genau nachvollziehbar, was gemacht wurde.


# Mark Down

Mark Down wird verwendet, um Dokumentationen in einem einfachen Textformat zu verfassen.
Dabei wird in der Markdown-Entwicklungssprache geschrieben. Diese lässt sich sehr einfach
in ein HTML-Format umwandeln.


# Systemsicherheit

Als Systemsicherheit haben wir in diesem Projekt verschiedenste Elemente umgesetzt. Diese sind:
Firewall & Reverse Proxy, Benutzer- & Rechteverwaltung, SSH, Authentifizierung & Autorisierung.
All diese Aspekte haben das Ziel, die Sicherheit unserer virtuellen Umgebung zu verbessern.




# Formatierungsbeispiele für README

* erstens
* zweitens
  * Einrücken


VM erstellen
```
das ist nun ein code
ls -l
```

Code kann auch `so hervor gehoben` werden

oder wir schreiben **bold** oder *kursiv*

> Test

## Links einfügen
[1]: http://sbb.ch "sbb"
[2]: http://tbz.ch "Technischen Berufsschule Zürich"

Die meisten Lernenden der [TBZ][2] kommen mit der [Bahn][2] zur Schule