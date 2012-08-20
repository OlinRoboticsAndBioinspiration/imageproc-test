#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/imageproc-test.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/imageproc-test.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/921515994/init_default.o ${OBJECTDIR}/_ext/921515994/at86rf.o ${OBJECTDIR}/_ext/921515994/delay.o ${OBJECTDIR}/_ext/921515994/dfmem.o ${OBJECTDIR}/_ext/921515994/gyro.o ${OBJECTDIR}/_ext/921515994/ipspi1.o ${OBJECTDIR}/_ext/921515994/packet_queue.o ${OBJECTDIR}/_ext/921515994/payload.o ${OBJECTDIR}/_ext/921515994/payload_queue.o ${OBJECTDIR}/_ext/921515994/queue.o ${OBJECTDIR}/_ext/921515994/radio.o ${OBJECTDIR}/_ext/921515994/stopwatch.o ${OBJECTDIR}/_ext/921515994/xl.o ${OBJECTDIR}/_ext/921515994/i2c_driver.o ${OBJECTDIR}/init.o ${OBJECTDIR}/interrupts.o ${OBJECTDIR}/main.o ${OBJECTDIR}/tests.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/921515994/init_default.o.d ${OBJECTDIR}/_ext/921515994/at86rf.o.d ${OBJECTDIR}/_ext/921515994/delay.o.d ${OBJECTDIR}/_ext/921515994/dfmem.o.d ${OBJECTDIR}/_ext/921515994/gyro.o.d ${OBJECTDIR}/_ext/921515994/ipspi1.o.d ${OBJECTDIR}/_ext/921515994/packet_queue.o.d ${OBJECTDIR}/_ext/921515994/payload.o.d ${OBJECTDIR}/_ext/921515994/payload_queue.o.d ${OBJECTDIR}/_ext/921515994/queue.o.d ${OBJECTDIR}/_ext/921515994/radio.o.d ${OBJECTDIR}/_ext/921515994/stopwatch.o.d ${OBJECTDIR}/_ext/921515994/xl.o.d ${OBJECTDIR}/_ext/921515994/i2c_driver.o.d ${OBJECTDIR}/init.o.d ${OBJECTDIR}/interrupts.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/tests.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/921515994/init_default.o ${OBJECTDIR}/_ext/921515994/at86rf.o ${OBJECTDIR}/_ext/921515994/delay.o ${OBJECTDIR}/_ext/921515994/dfmem.o ${OBJECTDIR}/_ext/921515994/gyro.o ${OBJECTDIR}/_ext/921515994/ipspi1.o ${OBJECTDIR}/_ext/921515994/packet_queue.o ${OBJECTDIR}/_ext/921515994/payload.o ${OBJECTDIR}/_ext/921515994/payload_queue.o ${OBJECTDIR}/_ext/921515994/queue.o ${OBJECTDIR}/_ext/921515994/radio.o ${OBJECTDIR}/_ext/921515994/stopwatch.o ${OBJECTDIR}/_ext/921515994/xl.o ${OBJECTDIR}/_ext/921515994/i2c_driver.o ${OBJECTDIR}/init.o ${OBJECTDIR}/interrupts.o ${OBJECTDIR}/main.o ${OBJECTDIR}/tests.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/imageproc-test.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ128MC706A
MP_LINKER_FILE_OPTION=,--script=p33FJ128MC706A.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/921515994/init_default.o: ../imageproc-lib/init_default.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/init_default.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/init_default.c  -o ${OBJECTDIR}/_ext/921515994/init_default.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/init_default.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/init_default.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/at86rf.o: ../imageproc-lib/at86rf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/at86rf.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/at86rf.c  -o ${OBJECTDIR}/_ext/921515994/at86rf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/at86rf.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/at86rf.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/dfmem.o: ../imageproc-lib/dfmem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/dfmem.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/dfmem.c  -o ${OBJECTDIR}/_ext/921515994/dfmem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/dfmem.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/dfmem.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/gyro.o: ../imageproc-lib/gyro.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/gyro.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/gyro.c  -o ${OBJECTDIR}/_ext/921515994/gyro.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/gyro.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/gyro.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/ipspi1.o: ../imageproc-lib/ipspi1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/ipspi1.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/ipspi1.c  -o ${OBJECTDIR}/_ext/921515994/ipspi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/ipspi1.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/ipspi1.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/packet_queue.o: ../imageproc-lib/packet_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/packet_queue.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/packet_queue.c  -o ${OBJECTDIR}/_ext/921515994/packet_queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/packet_queue.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/packet_queue.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/payload.o: ../imageproc-lib/payload.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/payload.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/payload.c  -o ${OBJECTDIR}/_ext/921515994/payload.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/payload.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/payload.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/payload_queue.o: ../imageproc-lib/payload_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/payload_queue.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/payload_queue.c  -o ${OBJECTDIR}/_ext/921515994/payload_queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/payload_queue.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/payload_queue.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/queue.o: ../imageproc-lib/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/queue.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/queue.c  -o ${OBJECTDIR}/_ext/921515994/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/queue.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/queue.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/radio.o: ../imageproc-lib/radio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/radio.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/radio.c  -o ${OBJECTDIR}/_ext/921515994/radio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/radio.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/radio.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/stopwatch.o: ../imageproc-lib/stopwatch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/stopwatch.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/stopwatch.c  -o ${OBJECTDIR}/_ext/921515994/stopwatch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/stopwatch.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/stopwatch.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/xl.o: ../imageproc-lib/xl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/xl.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/xl.c  -o ${OBJECTDIR}/_ext/921515994/xl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/xl.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/xl.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/i2c_driver.o: ../imageproc-lib/i2c_driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/i2c_driver.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/i2c_driver.c  -o ${OBJECTDIR}/_ext/921515994/i2c_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/i2c_driver.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/i2c_driver.o.d" $(SILENT) 
	
${OBJECTDIR}/init.o: init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/init.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  init.c  -o ${OBJECTDIR}/init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/init.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/init.o.d" $(SILENT) 
	
${OBJECTDIR}/interrupts.o: interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/interrupts.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  interrupts.c  -o ${OBJECTDIR}/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/interrupts.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/interrupts.o.d" $(SILENT) 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) 
	
${OBJECTDIR}/tests.o: tests.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/tests.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tests.c  -o ${OBJECTDIR}/tests.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tests.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/tests.o.d" $(SILENT) 
	
else
${OBJECTDIR}/_ext/921515994/init_default.o: ../imageproc-lib/init_default.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/init_default.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/init_default.c  -o ${OBJECTDIR}/_ext/921515994/init_default.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/init_default.o.d"        -g -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/init_default.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/at86rf.o: ../imageproc-lib/at86rf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/at86rf.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/at86rf.c  -o ${OBJECTDIR}/_ext/921515994/at86rf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/at86rf.o.d"        -g -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/at86rf.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/dfmem.o: ../imageproc-lib/dfmem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/dfmem.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/dfmem.c  -o ${OBJECTDIR}/_ext/921515994/dfmem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/dfmem.o.d"        -g -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/dfmem.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/gyro.o: ../imageproc-lib/gyro.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/gyro.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/gyro.c  -o ${OBJECTDIR}/_ext/921515994/gyro.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/gyro.o.d"        -g -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/gyro.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/ipspi1.o: ../imageproc-lib/ipspi1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/ipspi1.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/ipspi1.c  -o ${OBJECTDIR}/_ext/921515994/ipspi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/ipspi1.o.d"        -g -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/ipspi1.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/packet_queue.o: ../imageproc-lib/packet_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/packet_queue.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/packet_queue.c  -o ${OBJECTDIR}/_ext/921515994/packet_queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/packet_queue.o.d"        -g -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/packet_queue.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/payload.o: ../imageproc-lib/payload.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/payload.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/payload.c  -o ${OBJECTDIR}/_ext/921515994/payload.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/payload.o.d"        -g -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/payload.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/payload_queue.o: ../imageproc-lib/payload_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/payload_queue.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/payload_queue.c  -o ${OBJECTDIR}/_ext/921515994/payload_queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/payload_queue.o.d"        -g -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/payload_queue.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/queue.o: ../imageproc-lib/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/queue.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/queue.c  -o ${OBJECTDIR}/_ext/921515994/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/queue.o.d"        -g -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/queue.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/radio.o: ../imageproc-lib/radio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/radio.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/radio.c  -o ${OBJECTDIR}/_ext/921515994/radio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/radio.o.d"        -g -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/radio.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/stopwatch.o: ../imageproc-lib/stopwatch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/stopwatch.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/stopwatch.c  -o ${OBJECTDIR}/_ext/921515994/stopwatch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/stopwatch.o.d"        -g -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/stopwatch.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/xl.o: ../imageproc-lib/xl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/xl.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/xl.c  -o ${OBJECTDIR}/_ext/921515994/xl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/xl.o.d"        -g -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/xl.o.d" $(SILENT) 
	
${OBJECTDIR}/_ext/921515994/i2c_driver.o: ../imageproc-lib/i2c_driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/i2c_driver.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/i2c_driver.c  -o ${OBJECTDIR}/_ext/921515994/i2c_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/i2c_driver.o.d"        -g -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/i2c_driver.o.d" $(SILENT) 
	
${OBJECTDIR}/init.o: init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/init.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  init.c  -o ${OBJECTDIR}/init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/init.o.d"        -g -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/init.o.d" $(SILENT) 
	
${OBJECTDIR}/interrupts.o: interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/interrupts.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  interrupts.c  -o ${OBJECTDIR}/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/interrupts.o.d"        -g -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/interrupts.o.d" $(SILENT) 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"        -g -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) 
	
${OBJECTDIR}/tests.o: tests.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/tests.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tests.c  -o ${OBJECTDIR}/tests.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tests.o.d"        -g -omf=elf -fast-math -O0 -I"./" -I"../imageproc-lib/" -D__IMAGEPROC2 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/tests.o.d" $(SILENT) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/921515994/delay.o: ../imageproc-lib/delay.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/delay.o.d 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../imageproc-lib/delay.s  -o ${OBJECTDIR}/_ext/921515994/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -fast-math -Wa,-MD,"${OBJECTDIR}/_ext/921515994/delay.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/delay.o.d"  $(SILENT) 
	
else
${OBJECTDIR}/_ext/921515994/delay.o: ../imageproc-lib/delay.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/delay.o.d 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../imageproc-lib/delay.s  -o ${OBJECTDIR}/_ext/921515994/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -fast-math -Wa,-MD,"${OBJECTDIR}/_ext/921515994/delay.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/delay.o.d"  $(SILENT) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/imageproc-test.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/imageproc-test.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -fast-math -Wl,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--heap=10000,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,--report-mem$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/imageproc-test.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/imageproc-test.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -fast-math -Wl,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=10000,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,--report-mem$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}/xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/imageproc-test.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
