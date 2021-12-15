################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/startup_MKL25Z4.S 

OBJS += \
./Sources/FreeRTOS/startup_MKL25Z4.o 

S_UPPER_DEPS += \
./Sources/FreeRTOS/startup_MKL25Z4.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/FreeRTOS/startup_MKL25Z4.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/startup_MKL25Z4.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


