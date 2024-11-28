#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/GccApplication1.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/GccApplication1.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=GccApplication1/main.c GccApplication1/MCAL/dio/dio.c GccApplication1/EUCAL/LED/LED.c GccApplication1/EUCAL/button/button.c GccApplication1/MCAL/EXT_INT_0/ISR.c GccApplication1/App/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/GccApplication1/main.o ${OBJECTDIR}/GccApplication1/MCAL/dio/dio.o ${OBJECTDIR}/GccApplication1/EUCAL/LED/LED.o ${OBJECTDIR}/GccApplication1/EUCAL/button/button.o ${OBJECTDIR}/GccApplication1/MCAL/EXT_INT_0/ISR.o ${OBJECTDIR}/GccApplication1/App/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/GccApplication1/main.o.d ${OBJECTDIR}/GccApplication1/MCAL/dio/dio.o.d ${OBJECTDIR}/GccApplication1/EUCAL/LED/LED.o.d ${OBJECTDIR}/GccApplication1/EUCAL/button/button.o.d ${OBJECTDIR}/GccApplication1/MCAL/EXT_INT_0/ISR.o.d ${OBJECTDIR}/GccApplication1/App/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/GccApplication1/main.o ${OBJECTDIR}/GccApplication1/MCAL/dio/dio.o ${OBJECTDIR}/GccApplication1/EUCAL/LED/LED.o ${OBJECTDIR}/GccApplication1/EUCAL/button/button.o ${OBJECTDIR}/GccApplication1/MCAL/EXT_INT_0/ISR.o ${OBJECTDIR}/GccApplication1/App/app.o

# Source Files
SOURCEFILES=GccApplication1/main.c GccApplication1/MCAL/dio/dio.c GccApplication1/EUCAL/LED/LED.c GccApplication1/EUCAL/button/button.c GccApplication1/MCAL/EXT_INT_0/ISR.c GccApplication1/App/app.c



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
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/GccApplication1.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega32
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/GccApplication1/main.o: GccApplication1/main.c  .generated_files/flags/default/25c21395d6f54612a069e1637eae83c56ec74df0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/GccApplication1" 
	@${RM} ${OBJECTDIR}/GccApplication1/main.o.d 
	@${RM} ${OBJECTDIR}/GccApplication1/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/GccApplication1/main.o.d" -MT "${OBJECTDIR}/GccApplication1/main.o.d" -MT ${OBJECTDIR}/GccApplication1/main.o -o ${OBJECTDIR}/GccApplication1/main.o GccApplication1/main.c 
	
${OBJECTDIR}/GccApplication1/MCAL/dio/dio.o: GccApplication1/MCAL/dio/dio.c  .generated_files/flags/default/aff91c493d3744ff45d3a38d3dccefbe5fda68b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/GccApplication1/MCAL/dio" 
	@${RM} ${OBJECTDIR}/GccApplication1/MCAL/dio/dio.o.d 
	@${RM} ${OBJECTDIR}/GccApplication1/MCAL/dio/dio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/GccApplication1/MCAL/dio/dio.o.d" -MT "${OBJECTDIR}/GccApplication1/MCAL/dio/dio.o.d" -MT ${OBJECTDIR}/GccApplication1/MCAL/dio/dio.o -o ${OBJECTDIR}/GccApplication1/MCAL/dio/dio.o GccApplication1/MCAL/dio/dio.c 
	
${OBJECTDIR}/GccApplication1/EUCAL/LED/LED.o: GccApplication1/EUCAL/LED/LED.c  .generated_files/flags/default/2e2647b20ad642fd152835b3ad2e7c3f161853bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/GccApplication1/EUCAL/LED" 
	@${RM} ${OBJECTDIR}/GccApplication1/EUCAL/LED/LED.o.d 
	@${RM} ${OBJECTDIR}/GccApplication1/EUCAL/LED/LED.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/GccApplication1/EUCAL/LED/LED.o.d" -MT "${OBJECTDIR}/GccApplication1/EUCAL/LED/LED.o.d" -MT ${OBJECTDIR}/GccApplication1/EUCAL/LED/LED.o -o ${OBJECTDIR}/GccApplication1/EUCAL/LED/LED.o GccApplication1/EUCAL/LED/LED.c 
	
${OBJECTDIR}/GccApplication1/EUCAL/button/button.o: GccApplication1/EUCAL/button/button.c  .generated_files/flags/default/ca8ec4e0442745bb2a9d492277ced31f115a0abd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/GccApplication1/EUCAL/button" 
	@${RM} ${OBJECTDIR}/GccApplication1/EUCAL/button/button.o.d 
	@${RM} ${OBJECTDIR}/GccApplication1/EUCAL/button/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/GccApplication1/EUCAL/button/button.o.d" -MT "${OBJECTDIR}/GccApplication1/EUCAL/button/button.o.d" -MT ${OBJECTDIR}/GccApplication1/EUCAL/button/button.o -o ${OBJECTDIR}/GccApplication1/EUCAL/button/button.o GccApplication1/EUCAL/button/button.c 
	
${OBJECTDIR}/GccApplication1/MCAL/EXT_INT_0/ISR.o: GccApplication1/MCAL/EXT_INT_0/ISR.c  .generated_files/flags/default/31916a865e2fa80205adcad6fe0d685a6f35036c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/GccApplication1/MCAL/EXT_INT_0" 
	@${RM} ${OBJECTDIR}/GccApplication1/MCAL/EXT_INT_0/ISR.o.d 
	@${RM} ${OBJECTDIR}/GccApplication1/MCAL/EXT_INT_0/ISR.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/GccApplication1/MCAL/EXT_INT_0/ISR.o.d" -MT "${OBJECTDIR}/GccApplication1/MCAL/EXT_INT_0/ISR.o.d" -MT ${OBJECTDIR}/GccApplication1/MCAL/EXT_INT_0/ISR.o -o ${OBJECTDIR}/GccApplication1/MCAL/EXT_INT_0/ISR.o GccApplication1/MCAL/EXT_INT_0/ISR.c 
	
${OBJECTDIR}/GccApplication1/App/app.o: GccApplication1/App/app.c  .generated_files/flags/default/11281a7790b7e8491404c78312f171aa758f7dd6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/GccApplication1/App" 
	@${RM} ${OBJECTDIR}/GccApplication1/App/app.o.d 
	@${RM} ${OBJECTDIR}/GccApplication1/App/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/GccApplication1/App/app.o.d" -MT "${OBJECTDIR}/GccApplication1/App/app.o.d" -MT ${OBJECTDIR}/GccApplication1/App/app.o -o ${OBJECTDIR}/GccApplication1/App/app.o GccApplication1/App/app.c 
	
else
${OBJECTDIR}/GccApplication1/main.o: GccApplication1/main.c  .generated_files/flags/default/c4f961210ca4311b0ff6f407c2eaec7efadb93ad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/GccApplication1" 
	@${RM} ${OBJECTDIR}/GccApplication1/main.o.d 
	@${RM} ${OBJECTDIR}/GccApplication1/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/GccApplication1/main.o.d" -MT "${OBJECTDIR}/GccApplication1/main.o.d" -MT ${OBJECTDIR}/GccApplication1/main.o -o ${OBJECTDIR}/GccApplication1/main.o GccApplication1/main.c 
	
${OBJECTDIR}/GccApplication1/MCAL/dio/dio.o: GccApplication1/MCAL/dio/dio.c  .generated_files/flags/default/c178452d6e8aafdf119a9d2d61b96f753b9f257a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/GccApplication1/MCAL/dio" 
	@${RM} ${OBJECTDIR}/GccApplication1/MCAL/dio/dio.o.d 
	@${RM} ${OBJECTDIR}/GccApplication1/MCAL/dio/dio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/GccApplication1/MCAL/dio/dio.o.d" -MT "${OBJECTDIR}/GccApplication1/MCAL/dio/dio.o.d" -MT ${OBJECTDIR}/GccApplication1/MCAL/dio/dio.o -o ${OBJECTDIR}/GccApplication1/MCAL/dio/dio.o GccApplication1/MCAL/dio/dio.c 
	
${OBJECTDIR}/GccApplication1/EUCAL/LED/LED.o: GccApplication1/EUCAL/LED/LED.c  .generated_files/flags/default/3d6862cec9003a2a6451ed6af3c80eddc43d015e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/GccApplication1/EUCAL/LED" 
	@${RM} ${OBJECTDIR}/GccApplication1/EUCAL/LED/LED.o.d 
	@${RM} ${OBJECTDIR}/GccApplication1/EUCAL/LED/LED.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/GccApplication1/EUCAL/LED/LED.o.d" -MT "${OBJECTDIR}/GccApplication1/EUCAL/LED/LED.o.d" -MT ${OBJECTDIR}/GccApplication1/EUCAL/LED/LED.o -o ${OBJECTDIR}/GccApplication1/EUCAL/LED/LED.o GccApplication1/EUCAL/LED/LED.c 
	
${OBJECTDIR}/GccApplication1/EUCAL/button/button.o: GccApplication1/EUCAL/button/button.c  .generated_files/flags/default/532e209371e5f90ca17673b239a68b872a7c2038 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/GccApplication1/EUCAL/button" 
	@${RM} ${OBJECTDIR}/GccApplication1/EUCAL/button/button.o.d 
	@${RM} ${OBJECTDIR}/GccApplication1/EUCAL/button/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/GccApplication1/EUCAL/button/button.o.d" -MT "${OBJECTDIR}/GccApplication1/EUCAL/button/button.o.d" -MT ${OBJECTDIR}/GccApplication1/EUCAL/button/button.o -o ${OBJECTDIR}/GccApplication1/EUCAL/button/button.o GccApplication1/EUCAL/button/button.c 
	
${OBJECTDIR}/GccApplication1/MCAL/EXT_INT_0/ISR.o: GccApplication1/MCAL/EXT_INT_0/ISR.c  .generated_files/flags/default/31826f45599229c1971ae21a7f71a80c2ca9fc69 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/GccApplication1/MCAL/EXT_INT_0" 
	@${RM} ${OBJECTDIR}/GccApplication1/MCAL/EXT_INT_0/ISR.o.d 
	@${RM} ${OBJECTDIR}/GccApplication1/MCAL/EXT_INT_0/ISR.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/GccApplication1/MCAL/EXT_INT_0/ISR.o.d" -MT "${OBJECTDIR}/GccApplication1/MCAL/EXT_INT_0/ISR.o.d" -MT ${OBJECTDIR}/GccApplication1/MCAL/EXT_INT_0/ISR.o -o ${OBJECTDIR}/GccApplication1/MCAL/EXT_INT_0/ISR.o GccApplication1/MCAL/EXT_INT_0/ISR.c 
	
${OBJECTDIR}/GccApplication1/App/app.o: GccApplication1/App/app.c  .generated_files/flags/default/93725165c165055bdec01bda626d888df404667b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/GccApplication1/App" 
	@${RM} ${OBJECTDIR}/GccApplication1/App/app.o.d 
	@${RM} ${OBJECTDIR}/GccApplication1/App/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/GccApplication1/App/app.o.d" -MT "${OBJECTDIR}/GccApplication1/App/app.o.d" -MT ${OBJECTDIR}/GccApplication1/App/app.o -o ${OBJECTDIR}/GccApplication1/App/app.o GccApplication1/App/app.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/GccApplication1.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/GccApplication1.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/GccApplication1.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/GccApplication1.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1
	@${RM} ${DISTDIR}/GccApplication1.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/GccApplication1.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/GccApplication1.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/GccApplication1.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/GccApplication1.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/GccApplication1.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/GccApplication1.${IMAGE_TYPE}.hex"
	
	@echo Normalizing hex file
	@"C:/Program Files/Microchip/MPLABX/v6.20/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.20/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/GccApplication1.${IMAGE_TYPE}.hex -o${DISTDIR}/GccApplication1.${IMAGE_TYPE}.hex

endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
