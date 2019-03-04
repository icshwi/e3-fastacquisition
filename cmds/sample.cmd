system "echo -e 'i2c max5970 read 30 \ni2c max5970 write 30 3\nquit' | XprsMon "
epicsEnvSet("EPICS_CA_MAX_ARRAY_BYTES" "400000")

#######################################################################
#########################Fast Acquisition #############################
#######################################################################

epicsEnvSet("CARD"   "1")


require ifcdaq,0.2.1
require FastAcquisition,1.0.0
 
ndsCreateDevice(ifcdaq, CARD$(CARD), card=0, fmc=2)


dbLoadTemplate(sample.substitutions)

#**********************************************************#
#*********************** INIT  ****************************#
#**********************************************************#
iocInit


