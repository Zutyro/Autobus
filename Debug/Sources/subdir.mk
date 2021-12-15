################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Sources/InfoDisp.c \
../Sources/SPI_MKL25Z4.c \
../Sources/drv_gpio.c \
../Sources/drv_lcd.c \
../Sources/main.c 

OBJS += \
./Sources/InfoDisp.o \
./Sources/SPI_MKL25Z4.o \
./Sources/drv_gpio.o \
./Sources/drv_lcd.o \
./Sources/main.o 

C_DEPS += \
./Sources/InfoDisp.d \
./Sources/SPI_MKL25Z4.d \
./Sources/drv_gpio.d \
./Sources/drv_lcd.d \
./Sources/main.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/%.o: ../Sources/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DCLOCK_SETUP=1 -I"C:\Users\t_turecky\workspace\CMSIS_Driver" -I"C:\Users\t_turecky\KSDK\mkl25z4" -I"C:\Users\t_turecky\KSDK\hal" -I"../Sources" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\include" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\port" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\src" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


