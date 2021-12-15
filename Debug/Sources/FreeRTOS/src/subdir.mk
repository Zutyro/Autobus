################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/croutine.c \
C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/event_groups.c \
C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/heap_1.c \
C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/heap_2.c \
C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/heap_3.c \
C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/heap_4.c \
C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/list.c \
C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/queue.c \
C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/tasks.c \
C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/timers.c 

OBJS += \
./Sources/FreeRTOS/src/croutine.o \
./Sources/FreeRTOS/src/event_groups.o \
./Sources/FreeRTOS/src/heap_1.o \
./Sources/FreeRTOS/src/heap_2.o \
./Sources/FreeRTOS/src/heap_3.o \
./Sources/FreeRTOS/src/heap_4.o \
./Sources/FreeRTOS/src/list.o \
./Sources/FreeRTOS/src/queue.o \
./Sources/FreeRTOS/src/tasks.o \
./Sources/FreeRTOS/src/timers.o 

C_DEPS += \
./Sources/FreeRTOS/src/croutine.d \
./Sources/FreeRTOS/src/event_groups.d \
./Sources/FreeRTOS/src/heap_1.d \
./Sources/FreeRTOS/src/heap_2.d \
./Sources/FreeRTOS/src/heap_3.d \
./Sources/FreeRTOS/src/heap_4.d \
./Sources/FreeRTOS/src/list.d \
./Sources/FreeRTOS/src/queue.d \
./Sources/FreeRTOS/src/tasks.d \
./Sources/FreeRTOS/src/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/FreeRTOS/src/croutine.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/croutine.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DCLOCK_SETUP=1 -I"C:\Users\t_turecky\workspace\CMSIS_Driver" -I"C:\Users\t_turecky\KSDK\mkl25z4" -I"C:\Users\t_turecky\KSDK\hal" -I"../Sources" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\include" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\port" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\src" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/FreeRTOS/src/event_groups.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/event_groups.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DCLOCK_SETUP=1 -I"C:\Users\t_turecky\workspace\CMSIS_Driver" -I"C:\Users\t_turecky\KSDK\mkl25z4" -I"C:\Users\t_turecky\KSDK\hal" -I"../Sources" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\include" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\port" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\src" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/FreeRTOS/src/heap_1.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/heap_1.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DCLOCK_SETUP=1 -I"C:\Users\t_turecky\workspace\CMSIS_Driver" -I"C:\Users\t_turecky\KSDK\mkl25z4" -I"C:\Users\t_turecky\KSDK\hal" -I"../Sources" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\include" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\port" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\src" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/FreeRTOS/src/heap_2.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/heap_2.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DCLOCK_SETUP=1 -I"C:\Users\t_turecky\workspace\CMSIS_Driver" -I"C:\Users\t_turecky\KSDK\mkl25z4" -I"C:\Users\t_turecky\KSDK\hal" -I"../Sources" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\include" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\port" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\src" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/FreeRTOS/src/heap_3.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/heap_3.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DCLOCK_SETUP=1 -I"C:\Users\t_turecky\workspace\CMSIS_Driver" -I"C:\Users\t_turecky\KSDK\mkl25z4" -I"C:\Users\t_turecky\KSDK\hal" -I"../Sources" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\include" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\port" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\src" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/FreeRTOS/src/heap_4.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/heap_4.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DCLOCK_SETUP=1 -I"C:\Users\t_turecky\workspace\CMSIS_Driver" -I"C:\Users\t_turecky\KSDK\mkl25z4" -I"C:\Users\t_turecky\KSDK\hal" -I"../Sources" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\include" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\port" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\src" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/FreeRTOS/src/list.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/list.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DCLOCK_SETUP=1 -I"C:\Users\t_turecky\workspace\CMSIS_Driver" -I"C:\Users\t_turecky\KSDK\mkl25z4" -I"C:\Users\t_turecky\KSDK\hal" -I"../Sources" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\include" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\port" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\src" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/FreeRTOS/src/queue.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/queue.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DCLOCK_SETUP=1 -I"C:\Users\t_turecky\workspace\CMSIS_Driver" -I"C:\Users\t_turecky\KSDK\mkl25z4" -I"C:\Users\t_turecky\KSDK\hal" -I"../Sources" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\include" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\port" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\src" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/FreeRTOS/src/tasks.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/tasks.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DCLOCK_SETUP=1 -I"C:\Users\t_turecky\workspace\CMSIS_Driver" -I"C:\Users\t_turecky\KSDK\mkl25z4" -I"C:\Users\t_turecky\KSDK\hal" -I"../Sources" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\include" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\port" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\src" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/FreeRTOS/src/timers.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/timers.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DCLOCK_SETUP=1 -I"C:\Users\t_turecky\workspace\CMSIS_Driver" -I"C:\Users\t_turecky\KSDK\mkl25z4" -I"C:\Users\t_turecky\KSDK\hal" -I"../Sources" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\include" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\port" -I"C:\Users\t_turecky\Downloads\utb_frdm_vyuka_20210917\utb_frdm_vyuka\FreeRTOS\src" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


