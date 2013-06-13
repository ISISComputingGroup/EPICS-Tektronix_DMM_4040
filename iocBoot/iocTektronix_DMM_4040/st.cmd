#!../../bin/windows-x64/Tektronix_DMM_4040

## You may have to change Tektronix_DMM_4040 to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/Tektronix_DMM_4040.dbd"
Tektronix_DMM_4040_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/xxx.db","user=kht13119Host")

cd ${TOP}/iocBoot/${IOC}
iocInit

## Start any sequence programs
#seq sncxxx,"user=kht13119Host"
