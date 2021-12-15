################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/port/port.c 

OBJS += \
./FreeRTOS/port/port.o 

C_DEPS += \
./FreeRTOS/port/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS/port/port.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/port/port.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"../Sources" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


