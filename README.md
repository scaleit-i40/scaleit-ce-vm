# ScaleIT CE VM

ScaleIT Community Edition Plattform für VirtualBox

Mit ScaleIT CE VM kann eine ScaleIT Plattform ohne Entwicklerkenntnisse auf einem Windows-10-Rechner gestartet werden.

ScaleIT ist eine Software-Plattform zur Realisierung von Industrie 4.0 Applikationen in produzierende Betrieben. Kern von ScaleIT sind Apps (Web-Apps) und das ScaleIT App-Ökosystem mit App-Stores etc. ScaleIT ist ein offenes System auf Basis einer orchestrierten Microservice Architektur. Mit der Entwicklung von ScaleIT Apps und der Veröffentlichung in ScaleIT App-Stores können App-Hersteller selber Teil von ScaleIT werden. [Mehr Informationen zu ScaleIT](https://scaleit-i40.de)

Inhalt:

* ScaleIT Core CE
* ScaleIT Apps: Digital Twim Simulator, NodeRED CE
* Beispiel-Flow für Temperatur-Messung mit Dashboard-Anzeige

Empfohlen für App-Entwickler und zum Ausprobieren, nicht für den produktiven Einsatz!

Der Aufruf der ScaleIT Apps ist nur vom Rechner, auf dem die Virtualbox Software läuft möglich - nicht aus dem lokalen Netzwerk!


## Systemvoraussetzungen

* mind. 25 GB Festplattenspeicher
* mind. 6 GB RAM
* besser 2 als 1 Prozessor-Kern
* Windows 10
* Oracle VirtualBox 

Oracle VirtualBox ist Open Source und kann [hier](https://www.virtualbox.org/wiki/Downloads) heruntergeladen werden. 


## Installation

1. [Installationsskript herunterladen](https://github.com/scaleit-i40/scaleit-ce-vm/archive/master.zip) und in eigenes Verzeichnis auspacken

2. [Virtualbox-Image herunterladen](https://share.ondics.de/index.php/s/wF8wd37nNj4TkcB) und in gleiches Verzeichnis speichern

3. Das Skript ausführen:

    > install.bat 

   Es wird ggf. mehrmals nach dem Einverständnis des Administrators gefragt, um die Netzwrerkadaprter für ScaleIT anzulegen. Dies bitte immer bestätigen.

   Es kann bis zu 10 Minuten dauern, bis das Virtualbox-Image und alle ScaleIT Services darin gestartet sind.

4. Start von ScaleIT im Browser auf dem Installations-PC:

    http://10.0.3.30

Dann öffnet sich das LaunchPad und es stehen folgende
ScaleIT Apps zur Verfügung:

* Digital Twin Simulator: Damit werden Messwerte zufällig
  erzeugt und per MQTT als ScaleIT Message versendet
* NodeRED: Die ScaleIT Messages werden empfangen und auf
  einem Dashboard dargestellt.

Der NodeRED Flow kann verändert werden mit dem 
NodeRED Editor unter

    http://10.0.3.30:51530

## Details zum VirtualBox Image

Die Virtuelle Maschine hat nach der Einrichtung
folgende Netzwrerk-Konfiguration:

Netzwerkadapter 1:

	nat-netzwerk
	IP von ScaleIT: 10.0.2.100
	Subnetzmaske: 255.255.255.0
	Die ScaleIT-IP-Adresse wird nach 
	außen hin auf dies Computers maskiert.

Netzwerkadapter 2: 

	host-only-adapter
	IP von ScaleIT: 10.0.3.30
	IP des Computers: 10.0.3.10
	Subnetzmaske: 255.255.255.0
	
## Deinstallation

Zur Deinstallation sind folgende Schritte durchzuführen:

* In Virtualbox muss das Image gelöscht werden
* In Virtualbox muss das Host-only-Netzwerk gelöscht werden (im Menü Datei >>  Host-only Netzwerk Manager)
* Installations Dateien auf Festplatte löschen

## Lizenz und Autor

Lizenz: ScaleIT Ondics CE Lizenz

Ondics GmbH, Neckarstraße 66/1a, 73728 Esslingen

https://ondics.de

https://scaleit-i40.de

https://github.com/scaleit-i40

Haftungsausschluss: DIE SOFTWARE WIRD OHNE JEDE AUSDRÜCKLICHE ODER IMPLIZIERTE GARANTIE BEREITGESTELLT, EINSCHLIEẞLICH DER GARANTIE ZUR BENUTZUNG FÜR DEN VORGESEHENEN ODER EINEM BESTIMMTEN ZWECK SOWIE JEGLICHER RECHTSVERLETZUNG, JEDOCH NICHT DARAUF BESCHRÄNKT. IN KEINEM FALL SIND DIE AUTOREN ODER COPYRIGHTINHABER FÜR JEGLICHEN SCHADEN ODER SONSTIGE ANSPRÜCHE HAFTBAR ZU MACHEN, OB INFOLGE DER ERFÜLLUNG EINES VERTRAGES, EINES DELIKTES ODER ANDERS IM ZUSAMMENHANG MIT DER SOFTWARE ODER SONSTIGER VERWENDUNG DER SOFTWARE ENTSTANDEN. 

(C) 2019, Ondics GmbH

