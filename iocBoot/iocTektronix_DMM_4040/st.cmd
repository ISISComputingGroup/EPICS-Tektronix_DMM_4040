#!../../bin/windows-x64/Tektronix_DMM_4040

## You may have to change Tektronix_DMM_4040 to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/Tektronix_DMM_4040.dbd"
Tektronix_DMM_4040_registerRecordDeviceDriver pdbbase

lvDCOMConfigure("frontpanel", "frontpanel", "$(TOP)/Tektronix_DMM_4040App/protocol/Tektronix_DMM_4040.xml", "", 0)
#lvDCOMConfigure("frontpanel", "frontpanel", "$(TOP)/Tektronix_DMM_4040App/protocol/Tektronix_DMM_4040.xml", "ndxchipir", 6, "", "spudulike", "reliablebeam")

## Load record instances
dbLoadRecords("db/Tektronix_DMM_4040.db","P=ex1:")

cd ${TOP}/iocBoot/${IOC}
iocInit

## Start any sequence programs
#seq sncxxx,"user=kht13119Host"
