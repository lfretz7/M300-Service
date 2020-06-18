#!/bin/bash
#
#	Datenbank installieren und Konfigurieren
#

# root Password setzen, damit kein Dialog erscheint und die Installation haengt!
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password S3cr3tp4ssw0rd'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password S3cr3tp4ssw0rd'

# Installation
sudo apt-get install -y mysql-server

# MySQL Port oeffnen
sudo sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf

# User fuer Remote Zugriff einrichten - aber nur fuer Host web 192.168.55.101
mysql -uroot -pS3cr3tp4ssw0rd <<%EOF%
	CREATE USER 'root'@'192.168.55.101' IDENTIFIED BY 'admin';
	GRANT ALL PRIVILEGES ON *.* TO 'root'@'192.168.55.101';
	FLUSH PRIVILEGES;
%EOF%

# Restart fuer Konfigurationsaenderung
sudo service mysql restart

#Installation der UFW Firewall
sudo apt-get install -y ufw
#Port Konfiguration
sudo ufw allow from 192.168.55.101 to any port 3306
#UFW-Dienst einschalten
sudo ufw enable

# SSH Tunnel einrichten

#Weiterleitung von Port 8000 auf dem lokalen System (database/db01) an den Webserver web/web01
# Wechsel auf User admin01
sudo su - admin01
# in der VM
ssh -L 8000:localhost:80 web01 -N &
netstat -tulpen
curl http://localhost:8000

# Benutzern auf web/web01 wird ermöglicht, über localhost:3307 auf den MySQL-Server auf database/db01 zuzugreifen
# in der VM database
ssh -R 3307:localhost:3306 web01 -N &
ssh web01
# in der VM web
netstat -tulpen
curl http://localhost:3307
