# Mein LB2 Projekt: mmdb (Multi Machine, mehrere VMs)
----------------------

### Übersicht 

    +---------------------------------------------------------------+
    ! Notebook - Schulnetz 10.x.x.x und Privates Netz 192.168.55.1  !                 
    ! Port: 8080 (192.158.55.101:80)                                !	
    !                                                               !	
    !    +--------------------+          +---------------------+    !
    !    ! Web Server         !          ! Datenbank Server    !    !       
    !    ! Host: web01        !          ! Host: db01          !    !
    !    ! IP: 192.168.55.101 ! <------> ! IP: 192.168.55.100  !    !
    !    ! Port: 80           !          ! Port 3306           !    !
    !    ! Nat: 8080          !          ! Nat: -              !    !
    !    +--------------------+          +---------------------+    !
    !                                                               !	
    +---------------------------------------------------------------+
	
### Beschreibung

* Web Server mit Apache und MySQL UserInterface [Adminer](https://www.adminer.org/)
* Datenbank Server mit MySQL

* Die Verbindung Web - Datenbank erfolgt mittels Internen Netzwerk Adapter.
* Von Aussen ist nur der HTTP Port auf dem Web Server Erreichbar.

Um in die VM zu wechseln ist zusätzlich der in Vagrantfile definierte Name einzugeben.

	vagrant ssh database
	vagrant ssh web

Das MySQL User Interface ist via [http://localhost:8080/adminer.php](http://localhost:8080/adminer.php) mit User/Password: root/admin erreichbar.

### Tests

* Webserver per Ping erreichbar
* Datenbank per Ping erreichbar
* MySQl User Interface über [http://localhost:8080/adminer.php](http://localhost:8080/adminer.php) erreichbar.
* Login in Datenbank möglich: Server: 192.168.55.100, Benutzer: root, Passwort: admin
* Keine Ports erreichbar ausser 80 und 22.
* UFW Firewall vorhanden
* SSH Zugriff auf web01 und db01 VM

### Sicherheit

* Datenbank Server bzw. MySQL ist mit Password geschützt.
* Der Web Server ist offen und mittels ungeschütztem HTTP Protokoll erreichbar.
* UFW Firewall eingerichtet. (siehe Github-Commits)
* Reverse Proxy implementiert (siehe Github-Commits)