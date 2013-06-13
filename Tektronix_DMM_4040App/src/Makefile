TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = Tektronix_DMM_4040
# Tektronix_DMM_4040.dbd will be created and installed
DBD += Tektronix_DMM_4040.dbd

# Tektronix_DMM_4040.dbd will be made up from these files:
Tektronix_DMM_4040_DBD += base.dbd

# Include dbd files from all support applications:
#Tektronix_DMM_4040_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#Tektronix_DMM_4040_LIBS += xxx

# Tektronix_DMM_4040_registerRecordDeviceDriver.cpp derives from Tektronix_DMM_4040.dbd
Tektronix_DMM_4040_SRCS += Tektronix_DMM_4040_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
Tektronix_DMM_4040_SRCS_DEFAULT += Tektronix_DMM_4040Main.cpp
Tektronix_DMM_4040_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#Tektronix_DMM_4040_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
Tektronix_DMM_4040_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

Tektronix_DMM_4040_LIBS +=  lvDCOMSupport asyn
Tektronix_DMM_4040_SYS_LIBS_WIN32 += msxml2
