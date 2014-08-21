#!../../bin/windows-x64/Tektronix_DMM_4040

## You may have to change Tektronix_DMM_4040 to something else
## everywhere it appears in this file

< envPaths

epicsEnvSet "IOCNAME" "$(P=$(MYPVPREFIX))DMM4040"
epicsEnvSet "IOCSTATS_DB" "$(DEVIOCSTATS)/db/iocAdminSoft.db"

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/Tektronix_DMM_4040.dbd"
Tektronix_DMM_4040_registerRecordDeviceDriver pdbbase

#lvDCOMConfigure("frontpanel", "frontpanel", "$(TOP)/Tektronix_DMM_4040App/protocol/Tektronix_DMM_4040.xml", "", 0)
lvDCOMConfigure("frontpanel", "frontpanel", "$(TOP)/Tektronix_DMM_4040App/protocol/Tektronix_DMM_4040.xml", "ndxchipir", 6, "", "spudulike", "reliablebeam")

## Load record instances
dbLoadRecords("db/Tektronix_DMM_4040.db","P=$(IOCNAME):")
dbLoadRecords("$(IOCSTATS_DB)","IOC=$(IOCNAME)")

cd ${TOP}/iocBoot/${IOC}
iocInit

