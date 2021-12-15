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
./FreeRTOS/src/croutine.o \
./FreeRTOS/src/event_groups.o \
./FreeRTOS/src/heap_1.o \
./FreeRTOS/src/heap_2.o \
./FreeRTOS/src/heap_3.o \
./FreeRTOS/src/heap_4.o \
./FreeRTOS/src/list.o \
./FreeRTOS/src/queue.o \
./FreeRTOS/src/tasks.o \
./FreeRTOS/src/timers.o 

C_DEPS += \
./FreeRTOS/src/croutine.d \
./FreeRTOS/src/event_groups.d \
./FreeRTOS/src/heap_1.d \
./FreeRTOS/src/heap_2.d \
./FreeRTOS/src/heap_3.d \
./FreeRTOS/src/heap_4.d \
./FreeRTOS/src/list.d \
./FreeRTOS/src/queue.d \
./FreeRTOS/src/tasks.d \
./FreeRTOS/src/timers.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS/src/croutine.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/croutine.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"../Sources" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeRTOS/src/event_groups.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/event_groups.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"../Sources" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeRTOS/src/heap_1.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/heap_1.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"../Sources" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeRTOS/src/heap_2.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/heap_2.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"../Sources" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeRTOS/src/heap_3.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/heap_3.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"../Sources" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeRTOS/src/heap_4.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/heap_4.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"../Sources" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeRTOS/src/list.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/list.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"../Sources" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeRTOS/src/queue.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/queue.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"../Sources" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeRTOS/src/tasks.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/tasks.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"../Sources" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeRTOS/src/timers.o: C:/Users/t_turecky/Downloads/utb_frdm_vyuka_20210917/utb_frdm_vyuka/FreeRTOS/src/timers.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"../Sources" -I"../Includes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


