set installpath=C:\Program Files\Oracle\VirtualBox\VBoxManage.exe
set natname=ScaleITNAT
"%installpath%" natnetwork add --netname %natname% --network "10.0.2.0/24" --enable
"%installpath%" natnetwork list

"%installpath%" hostonlyif create > .temp.txt
set /p result=<.temp.txt
set adaptername=%result:~11,-26%
echo %adaptername%

"%installpath%" hostonlyif ipconfig "%adaptername%" --ip 10.0.3.10 --netmask 255.255.255.0

echo importieren...
"%installpath%" import "ScaleIT-CE VM.ova" --vsys 0 --unit 10 --ignore --eula accept > .temp1.txt
findstr "^[0-9]*.*Suggested\sVM name.*" .temp1.txt > .temp2.txt
set /p result=<.temp2.txt
set machinename=%result:~23,-1%
echo %machinename%

"%installpath%" modifyvm %machinename% --nat-network1 "%natname%"
"%installpath%" modifyvm %machinename% --hostonlyadapter2 "%adaptername%"

echo ----Erfolgreich eingerichtet----

del /f .temp.txt
del /f .temp1.txt
del /f .temp2.txt

echo ----Einrichtung abgeschlossen----

"%installpath%" startvm %machinename%
