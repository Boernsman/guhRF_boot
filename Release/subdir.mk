################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ATmegaBOOT_guhRF.c 

S_SRCS += \
../jumptable.s 

OBJS += \
./ATmegaBOOT_guhRF.o \
./jumptable.o 

C_DEPS += \
./ATmegaBOOT_guhRF.d 

S_DEPS += \
./jumptable.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -DMAX_TIME_COUNT=F_CPU>>4 -DGUH_TARGET=guhRF -DPARAMS_EUI64ADDR='{0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,}' -DNUM_LED_FLASHES=5 -D__AVR_DEVICE_NAME__=atmega256rfr2 -DEFUSE=FD -DLFUSE=F6 -DHFUSE=98 -DBAUD_RATE=57600 -DF_CPU=16000000L -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega256rfr2 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

%.o: ../%.s
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Assembler'
	avr-gcc -x assembler-with-cpp -mmcu=atmega256rfr2 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


