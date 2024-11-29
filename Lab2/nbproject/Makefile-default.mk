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
FINAL_IMAGE=${DISTDIR}/Lab2.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Lab2.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=App/app.c EUCAL/button/button.c EUCAL/LED/LED.c MCAL/DIO/dio.c MCAL/EEPROM/eeprom.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/App/app.o ${OBJECTDIR}/EUCAL/button/button.o ${OBJECTDIR}/EUCAL/LED/LED.o ${OBJECTDIR}/MCAL/DIO/dio.o ${OBJECTDIR}/MCAL/EEPROM/eeprom.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/App/app.o.d ${OBJECTDIR}/EUCAL/button/button.o.d ${OBJECTDIR}/EUCAL/LED/LED.o.d ${OBJECTDIR}/MCAL/DIO/dio.o.d ${OBJECTDIR}/MCAL/EEPROM/eeprom.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/App/app.o ${OBJECTDIR}/EUCAL/button/button.o ${OBJECTDIR}/EUCAL/LED/LED.o ${OBJECTDIR}/MCAL/DIO/dio.o ${OBJECTDIR}/MCAL/EEPROM/eeprom.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=App/app.c EUCAL/button/button.c EUCAL/LED/LED.c MCAL/DIO/dio.c MCAL/EEPROM/eeprom.c main.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Lab2.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega32
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/App/app.o: App/app.c  .generated_files/flags/default/ed44c8fdb4d6b87283b29f625763b2eea02ac1b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/App" 
	@${RM} ${OBJECTDIR}/App/app.o.d 
	@${RM} ${OBJECTDIR}/App/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/App/app.o.d" -MT "${OBJECTDIR}/App/app.o.d" -MT ${OBJECTDIR}/App/app.o -o ${OBJECTDIR}/App/app.o App/app.c 
	
${OBJECTDIR}/EUCAL/button/button.o: EUCAL/button/button.c  .generated_files/flags/default/8e9837de1bbb62bbfc61621a858a5e5baa0e7020 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/EUCAL/button" 
	@${RM} ${OBJECTDIR}/EUCAL/button/button.o.d 
	@${RM} ${OBJECTDIR}/EUCAL/button/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/EUCAL/button/button.o.d" -MT "${OBJECTDIR}/EUCAL/button/button.o.d" -MT ${OBJECTDIR}/EUCAL/button/button.o -o ${OBJECTDIR}/EUCAL/button/button.o EUCAL/button/button.c 
	
${OBJECTDIR}/EUCAL/LED/LED.o: EUCAL/LED/LED.c  .generated_files/flags/default/81e3231b83255f0dbe6fbc4019f94aa85a7b5302 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/EUCAL/LED" 
	@${RM} ${OBJECTDIR}/EUCAL/LED/LED.o.d 
	@${RM} ${OBJECTDIR}/EUCAL/LED/LED.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/EUCAL/LED/LED.o.d" -MT "${OBJECTDIR}/EUCAL/LED/LED.o.d" -MT ${OBJECTDIR}/EUCAL/LED/LED.o -o ${OBJECTDIR}/EUCAL/LED/LED.o EUCAL/LED/LED.c 
	
${OBJECTDIR}/MCAL/DIO/dio.o: MCAL/DIO/dio.c  .generated_files/flags/default/edef5464a70a81e281a01995f27a982202ac32a0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL/DIO" 
	@${RM} ${OBJECTDIR}/MCAL/DIO/dio.o.d 
	@${RM} ${OBJECTDIR}/MCAL/DIO/dio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL/DIO/dio.o.d" -MT "${OBJECTDIR}/MCAL/DIO/dio.o.d" -MT ${OBJECTDIR}/MCAL/DIO/dio.o -o ${OBJECTDIR}/MCAL/DIO/dio.o MCAL/DIO/dio.c 
	
${OBJECTDIR}/MCAL/EEPROM/eeprom.o: MCAL/EEPROM/eeprom.c  .generated_files/flags/default/b352311083e2bc257e892dce64e5005338c1f130 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL/EEPROM" 
	@${RM} ${OBJECTDIR}/MCAL/EEPROM/eeprom.o.d 
	@${RM} ${OBJECTDIR}/MCAL/EEPROM/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL/EEPROM/eeprom.o.d" -MT "${OBJECTDIR}/MCAL/EEPROM/eeprom.o.d" -MT ${OBJECTDIR}/MCAL/EEPROM/eeprom.o -o ${OBJECTDIR}/MCAL/EEPROM/eeprom.o MCAL/EEPROM/eeprom.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/10c2124ece9b0b951aca118b1b63e2bdd84c84f9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
else
${OBJECTDIR}/App/app.o: App/app.c  .generated_files/flags/default/63de7a843c526f84ceee9d602262e158f066bc2d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/App" 
	@${RM} ${OBJECTDIR}/App/app.o.d 
	@${RM} ${OBJECTDIR}/App/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/App/app.o.d" -MT "${OBJECTDIR}/App/app.o.d" -MT ${OBJECTDIR}/App/app.o -o ${OBJECTDIR}/App/app.o App/app.c 
	
${OBJECTDIR}/EUCAL/button/button.o: EUCAL/button/button.c  .generated_files/flags/default/389330c956fa067f2bbf2cf79d73c23ddaa0a7e6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/EUCAL/button" 
	@${RM} ${OBJECTDIR}/EUCAL/button/button.o.d 
	@${RM} ${OBJECTDIR}/EUCAL/button/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/EUCAL/button/button.o.d" -MT "${OBJECTDIR}/EUCAL/button/button.o.d" -MT ${OBJECTDIR}/EUCAL/button/button.o -o ${OBJECTDIR}/EUCAL/button/button.o EUCAL/button/button.c 
	
${OBJECTDIR}/EUCAL/LED/LED.o: EUCAL/LED/LED.c  .generated_files/flags/default/dc8f6626ef8418b7e462f26a8f7fc2a25267b84c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/EUCAL/LED" 
	@${RM} ${OBJECTDIR}/EUCAL/LED/LED.o.d 
	@${RM} ${OBJECTDIR}/EUCAL/LED/LED.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/EUCAL/LED/LED.o.d" -MT "${OBJECTDIR}/EUCAL/LED/LED.o.d" -MT ${OBJECTDIR}/EUCAL/LED/LED.o -o ${OBJECTDIR}/EUCAL/LED/LED.o EUCAL/LED/LED.c 
	
${OBJECTDIR}/MCAL/DIO/dio.o: MCAL/DIO/dio.c  .generated_files/flags/default/c3c80f0222cf43b9f29a9470809acf6241941d92 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL/DIO" 
	@${RM} ${OBJECTDIR}/MCAL/DIO/dio.o.d 
	@${RM} ${OBJECTDIR}/MCAL/DIO/dio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL/DIO/dio.o.d" -MT "${OBJECTDIR}/MCAL/DIO/dio.o.d" -MT ${OBJECTDIR}/MCAL/DIO/dio.o -o ${OBJECTDIR}/MCAL/DIO/dio.o MCAL/DIO/dio.c 
	
${OBJECTDIR}/MCAL/EEPROM/eeprom.o: MCAL/EEPROM/eeprom.c  .generated_files/flags/default/af3808eab68e46a5109262e14e2f496e0f71cd6b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL/EEPROM" 
	@${RM} ${OBJECTDIR}/MCAL/EEPROM/eeprom.o.d 
	@${RM} ${OBJECTDIR}/MCAL/EEPROM/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL/EEPROM/eeprom.o.d" -MT "${OBJECTDIR}/MCAL/EEPROM/eeprom.o.d" -MT ${OBJECTDIR}/MCAL/EEPROM/eeprom.o -o ${OBJECTDIR}/MCAL/EEPROM/eeprom.o MCAL/EEPROM/eeprom.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/73e0350e01a25e6ce1c0df4ae5fc36d6d01efe67 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
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
${DISTDIR}/Lab2.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Lab2.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Lab2.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/Lab2.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1
	@${RM} ${DISTDIR}/Lab2.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/Lab2.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Lab2.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Lab2.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/Lab2.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/Lab2.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/Lab2.${IMAGE_TYPE}.hex"
	
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
