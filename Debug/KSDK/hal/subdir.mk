################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/t_turecky/KSDK/hal/fsl_i2c_hal.c \
C:/Users/t_turecky/KSDK/hal/fsl_misc_utilities.c \
C:/Users/t_turecky/KSDK/hal/fsl_spi_hal.c 

OBJS += \
./KSDK/hal/fsl_i2c_hal.o \
./KSDK/hal/fsl_misc_utilities.o \
./KSDK/hal/fsl_spi_hal.o 

C_DEPS += \
./KSDK/hal/fsl_i2c_hal.d \
./KSDK/hal/fsl_misc_utilities.d \
./KSDK/hal/fsl_spi_hal.d 


# Each subdirectory must supply rules for building sources it contributes
KSDK/hal/fsl_i2c_hal.o: C:/Users/t_turecky/KSDK/hal/fsl_i2c_hal.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DCLOCK_SETUP=1 -I"C:\Users\t_turecky\workspace\CMSIS_Driver" -I"C:\Users\t_turecky\KSDK\mkl25z4" -I"C:\Users\t_turecky\KSDK\hal" -I"../Sources" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\include" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\port" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\src" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

KSDK/hal/fsl_misc_utilities.o: C:/Users/t_turecky/KSDK/hal/fsl_misc_utilities.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DCLOCK_SETUP=1 -I"C:\Users\t_turecky\workspace\CMSIS_Driver" -I"C:\Users\t_turecky\KSDK\mkl25z4" -I"C:\Users\t_turecky\KSDK\hal" -I"../Sources" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\include" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\port" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\src" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

KSDK/hal/fsl_spi_hal.o: C:/Users/t_turecky/KSDK/hal/fsl_spi_hal.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DCLOCK_SETUP=1 -I"C:\Users\t_turecky\workspace\CMSIS_Driver" -I"C:\Users\t_turecky\KSDK\mkl25z4" -I"C:\Users\t_turecky\KSDK\hal" -I"../Sources" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\include" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\port" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\src" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


