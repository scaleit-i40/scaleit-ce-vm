# ScaleIT CE VM

ScaleIT Plattform Installation für VirtualBox

Inhalt:

* ScaleIT Core CE
* ScaleIT Apps: Digital Twim Simulator, NodeRED CE
* Beispiel-Flow für Temperatur-Messung mit Dashboard-Anzeige

Empfohlen für App-Entwickler und zum Ausprobieren,
nicht für den produktiven Einsatz!


## Systemvoraussetzungen

* mind. 25 GB Festplattenspeicher
* mind. 6 GB RAM
* besser 2 als 1 Prozessor-Kern
* Windows 10
* Oracle VirtualBox 

Oracle VirtualBox ist Open Source und kann hier 
heruntergeladen werden: 
https://www.virtualbox.org/wiki/Downloads

Das VirtualBox Image kann hier heruntergeladen werden:

    https://share.ondics.de/...

## Installation

1. Das Windows-Skript ausführen:

    > ScaleIT-config.bat 

2. VirtualBox benötigt Admin-Rechte

Es wird ggf. mehrmals nach dem Einverständnis des
Administrators fragen, um die Netzwrerkadaprter für
ScaleIT anzulegen. Dies bitte immer bestätigen.

3. Start von ScaleIT im Browser auf dem Installations-PC:

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

## Lizenz und Autor

Lizenz: ScaleIT Ondics CE Lizenz

Ondics GmbH, Neckarstraße 66/1a, 73728 Esslingen
https://ondics.de
https://scaleit-i40.de
https://github.com/scaleit-i40

(C) 2019, Ondics GmbH

