################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
guhRF_boot.lss \

FLASH_IMAGE += \
guhRF_boot.hex \

EEPROM_IMAGE += \
guhRF_boot.eep \

SIZEDUMMY += \
sizedummy \


# All Target
all: guhRF_boot.elf secondary-outputs

# Tool invocations
guhRF_boot.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,guhRF_boot.map -Wl,--section-start=.text=0x1F000,--section-start=.jumps=0x1FF80 -mmcu=atmega256rfr2 -o "guhRF_boot.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

guhRF_boot.lss: guhRF_boot.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S guhRF_boot.elf  >"guhRF_boot.lss"
	@echo 'Finished building: $@'
	@echo ' '

guhRF_boot.hex: guhRF_boot.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex guhRF_boot.elf  "guhRF_boot.hex"
	@echo 'Finished building: $@'
	@echo ' '

guhRF_boot.eep: guhRF_boot.elf
	@echo 'Create eeprom image (ihex format)'
	-avr-objcopy -j .eeprom --no-change-warnings --change-section-lma .eeprom=0 -O ihex guhRF_boot.elf  "guhRF_boot.eep"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: guhRF_boot.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega256rfr2 guhRF_boot.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(ASM_DEPS)$(EEPROM_IMAGE)$(FLASH_IMAGE)$(ELFS)$(LSS)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS) guhRF_boot.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(EEPROM_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
