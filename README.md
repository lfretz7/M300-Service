# M300-Service Informationen
Dieses Repository wird als Cloud-Speicher für das Modul 300 verwendet.



## Vagrant wichtige Befehle

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









# Formatierungsbeispiele

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