/*
 * Copyright (c) 2015, Freescale Semiconductor, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 *   of conditions and the following disclaimer.
 *
 * o Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * o Neither the name of Freescale Semiconductor, Inc. nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "MKL25Z4.h"
#include "FreeRTOS.h"
#include "InfoDisp.h"
#include "drv_gpio.h"
#include "drv_lcd.h"
#include "string.h"
#include "stdio.h"
#include "semphr.h"

static int i = 0;

void Informace(void);
void Ovladani(void);
void Obrazovka(void);
void Hodiny(void);
void FlipArray(char array[20][30], int count);

enum{OTEVRENE, ZAVRENE, VYPNUTE} dvereStav = VYPNUTE;
enum{ZAPNUTA, SMER, VYPNUTA} linkaStav = VYPNUTA;
enum{NASTAVENE, NENASTAVENE} hodinyStav = NENASTAVENE;



char linka1[5][30] = {"Pocatecni stanice","Test","Stanice 1", "Stanice 2","Konecna stanice"};
char linka2[6][30] = {"Pocatecni stanice 2","Test 2","Stanice 3", "Stanice 4","Stanice 5","Konecna stanice 2"};

int linka1Pocet = 5;
int linka2Pocet = 6;



int smer = 0;
int stanice = 0;
char textProVypis[64];
int cisloLinky;
int posledniStanice = 0; //bool

int maxLinka = 1;

int hodina10 = 0;
int hodina1 = 0;
int minuta10 = 0;
int minuta1 = 0;
char textHodiny[5];
int poziceHodiny = 0;

SemaphoreHandle_t G_Mutex = NULL;

int main(void)
{
	DispInit();
	LCD_initialize();
	GPIO_Initialize();

	pinMode(SW1, INPUT);
	pinMode(SW2, INPUT);
	pinMode(SW3, INPUT);


	G_Mutex = xSemaphoreCreateMutex();

	cisloLinky = 0;

	Clear();

	xTaskCreate(
			Informace,
			"Informace",
			configMINIMAL_STACK_SIZE,
			(void*)NULL,
			tskIDLE_PRIORITY,
			(xTaskHandle*)NULL
			);
	xTaskCreate(
			Ovladani,
			"Ovladani",
			configMINIMAL_STACK_SIZE,
			(void*)NULL,
			tskIDLE_PRIORITY+2,
			(xTaskHandle*)NULL
			);
	xTaskCreate(
			Obrazovka,
			"Obrazovka",
			configMINIMAL_STACK_SIZE,
			(void*)NULL,
			tskIDLE_PRIORITY+1,
			(xTaskHandle*)NULL
			);
	xTaskCreate(
			Hodiny,
			"Hodiny",
			configMINIMAL_STACK_SIZE,
			(void*)NULL,
			tskIDLE_PRIORITY+3,
			(xTaskHandle*)NULL
			);

	vTaskStartScheduler();

	while(1);
    /* Never leave main */
    return 0;
}


void Informace(void){
	TickType_t xLastWakeTime;
	xLastWakeTime = xTaskGetTickCount();

	while(1){
		switch(dvereStav){
		case VYPNUTE:
			Clear();
			break;
		case ZAVRENE:
			while(1){
				switch(cisloLinky){
				case 0:
					sprintf(textProVypis, "Linka %i - %s",cisloLinky+1,linka1[linka1Pocet-1]);
					break;
				case 1:
					sprintf(textProVypis, "Linka %i - %s",cisloLinky+1,linka2[linka2Pocet-1]);
					break;
				}
				ZobrazText(textProVypis,0,0,0);
				if(strlen(textProVypis) > 8){
					vTaskDelay(500 / portTICK_RATE_MS);
					for(int i = 1; i <= (strlen(textProVypis)-4)*5; i++){
						for(int i = 0; i < 5; i++){
							vTaskDelay(10 / portTICK_RATE_MS);
							if(dvereStav == OTEVRENE || dvereStav == VYPNUTE)
								goto Otevrene;
						}
						Clear();
						ZobrazText(textProVypis,0,i*(-1),0);
					}
					for(int i = 0; i < 50; i++){
						vTaskDelay(10 / portTICK_RATE_MS);
						if(dvereStav == OTEVRENE || dvereStav == VYPNUTE)
							goto Otevrene;
					}
				}
				else{
					for(int i = 0; i < 300; i++){
						vTaskDelay(10 / portTICK_RATE_MS);
						if(dvereStav == OTEVRENE || dvereStav == VYPNUTE)
							goto Otevrene;
					}
				}
				Clear();
				switch(cisloLinky){
				case 0:
					sprintf(textProVypis, "Pristi stanice: %s",linka1[stanice]);
					break;
				case 1:
					sprintf(textProVypis, "Pristi stanice: %s",linka2[stanice]);
					break;
				}
				ZobrazText(textProVypis,0,0,0);
				if(strlen(textProVypis) > 8){
					vTaskDelay(500 / portTICK_RATE_MS);
					for(int i = 1; i <= (strlen(textProVypis)-3)*5; i++){
						for(int i = 0; i < 5; i++){
							vTaskDelay(10 / portTICK_RATE_MS);
							if(dvereStav == OTEVRENE || dvereStav == VYPNUTE)
								goto Otevrene;
						}
						Clear();
						ZobrazText(textProVypis,0,i*(-1),0);
					}
					for(int i = 0; i < 50; i++){
						vTaskDelay(10 / portTICK_RATE_MS);
						if(dvereStav == OTEVRENE || dvereStav == VYPNUTE)
							goto Otevrene;
					}
				}
				else{
					for(int i = 0; i < 200; i++){
						vTaskDelay(10 / portTICK_RATE_MS);
						if(dvereStav == OTEVRENE || dvereStav == VYPNUTE)
							goto Otevrene;
					}
				}
				Clear();
				xSemaphoreTake(G_Mutex, portMAX_DELAY);
				sprintf(textProVypis, "%i%i:%i%i",hodina10,hodina1,minuta10,minuta1);
				xSemaphoreGive(G_Mutex);
				ZobrazText(textProVypis,0,10,0);
				for(int i = 0; i < 200; i++){
					vTaskDelay(10 / portTICK_RATE_MS);
					if(dvereStav == OTEVRENE || dvereStav == VYPNUTE)
						goto Otevrene;
				}
				Clear();
			}
			Otevrene:
			break;
		case OTEVRENE:
			Clear();
			switch(cisloLinky){
			case 0:
				sprintf(textProVypis, "%s",linka1[stanice]);
				break;
			case 1:
				sprintf(textProVypis, "%s",linka2[stanice]);
				break;
			}
			ZobrazText(textProVypis,0,0,0);
			if(strlen(textProVypis) > 8){
				vTaskDelay(500 / portTICK_RATE_MS);
				for(int i = 1; i <= (strlen(textProVypis)-5)*5; i++){
					for(int i = 0; i < 5; i++){
						vTaskDelay(10 / portTICK_RATE_MS);
						if(dvereStav == ZAVRENE || dvereStav == VYPNUTE)
							goto Zavrene;
					}
					Clear();
					ZobrazText(textProVypis,0,i*(-1),0);
				}
				for(int i = 0; i < 50; i++){
					vTaskDelay(10 / portTICK_RATE_MS);
					if(dvereStav == ZAVRENE || dvereStav == VYPNUTE)
						goto Zavrene;
				}
			}
			else{
				for(int i = 0; i < 200; i++){
					vTaskDelay(10 / portTICK_RATE_MS);
					if(dvereStav == ZAVRENE || dvereStav == VYPNUTE)
						goto Zavrene;
				}
			}
			Clear();
			switch(cisloLinky){
			case 0:
				if(stanice+1 == linka1Pocet)
					posledniStanice = 1;
				break;
			case 1:
				if(stanice+1 == linka2Pocet)
					posledniStanice = 1;
				break;
			}
			if(posledniStanice == 1){
				strcpy(textProVypis,"Konecna stanice, vystupte si prosim.");
				ZobrazText(textProVypis,0,0,0);
				if(strlen(textProVypis) > 8){
					vTaskDelay(500 / portTICK_RATE_MS);
					for(int i = 1; i <= (strlen(textProVypis)-4)*5; i++){
						for(int i = 0; i < 5; i++){
							vTaskDelay(10 / portTICK_RATE_MS);
							if(dvereStav == ZAVRENE || dvereStav == VYPNUTE)
								goto Zavrene;
						}
						Clear();
						ZobrazText(textProVypis,0,i*(-1),0);
					}
					for(int i = 0; i < 50; i++){
						vTaskDelay(10 / portTICK_RATE_MS);
						if(dvereStav == ZAVRENE || dvereStav == VYPNUTE)
							goto Zavrene;
					}
				}
			}
			Zavrene:
			break;
		}
	}
}


void Ovladani(void){
	static int pressed = 0;
	static int pressed2 = 0;
	static int pressed3 = 0;
	while(1){
		if(dvereStav == ZAVRENE){
			if(posledniStanice == 1){
				stanice = 0;
				posledniStanice = 0;
				dvereStav = VYPNUTE;
				linkaStav = VYPNUTA;
			}
		}
		if(pinRead(SW1) == LOW && !pressed && linkaStav == ZAPNUTA){
			vTaskDelay(50 / portTICK_RATE_MS);
			if(pinRead(SW1) == LOW){
				pressed = 1;
			}
		}
		if(pinRead(SW1) == HIGH && pressed && linkaStav == ZAPNUTA){
			vTaskDelay(50 / portTICK_RATE_MS);
			if(pinRead(SW1) == HIGH){
				pressed = 0;
				switch(dvereStav){
				case ZAVRENE:
					dvereStav = OTEVRENE;
					break;
				case OTEVRENE:
					dvereStav = ZAVRENE;
					stanice++;
					switch(cisloLinky){
					case 0:
						if(stanice == linka1Pocet)
							posledniStanice = 1;
						break;
					case 1:
						if(stanice == linka2Pocet)
							posledniStanice = 1;
						break;
					}

				}
			}
		}

		if(pinRead(SW2) == LOW && !pressed2 && hodinyStav == NENASTAVENE){
			vTaskDelay(50 / portTICK_RATE_MS);
			if(pinRead(SW2) == LOW){
				pressed2 = 1;
			}
		}
		if(pinRead(SW3) == LOW && !pressed3 && hodinyStav == NENASTAVENE){
			vTaskDelay(50 / portTICK_RATE_MS);
			if(pinRead(SW3) == LOW){
				pressed3 = 1;
			}
		}
		if(pinRead(SW2) == HIGH && pressed2 && hodinyStav == NENASTAVENE){
			vTaskDelay(50 / portTICK_RATE_MS);
			if(pinRead(SW2) == HIGH){
				pressed2 = 0;
				switch(poziceHodiny){
				case 0:
					hodina10++;
					if(hodina10>2)
						hodina10 = 0;
					break;
				case 1:
					hodina1++;
					if(hodina1>3 && hodina10==2)
						hodina1 = 0;
					else if(hodina1>9)
						hodina1 = 0;

					break;
				case 2:
					minuta10++;
					if(minuta10>5)
						minuta10 = 0;
					break;
				case 3:
					minuta1++;
					if(minuta1>9)
						minuta1 = 0;
				}
			}
		}
		if(pinRead(SW3) == HIGH && pressed3 && hodinyStav == NENASTAVENE){
			vTaskDelay(50 / portTICK_RATE_MS);
			if(pinRead(SW3) == HIGH){
				pressed3 = 0;
				poziceHodiny++;
				if(poziceHodiny > 3)
					hodinyStav = NASTAVENE;
			}
		}

		if(pinRead(SW2) == LOW && !pressed2 && linkaStav == VYPNUTA && hodinyStav == NASTAVENE){
			vTaskDelay(50 / portTICK_RATE_MS);
			if(pinRead(SW2) == LOW){
				pressed2 = 1;
			}
		}
		if(pinRead(SW3) == LOW && !pressed3 && linkaStav == VYPNUTA && hodinyStav == NASTAVENE){
			vTaskDelay(50 / portTICK_RATE_MS);
			if(pinRead(SW3) == LOW){
				pressed3 = 1;
			}
		}
		if(pinRead(SW2) == HIGH && pressed2 && linkaStav == VYPNUTA && hodinyStav == NASTAVENE){
			vTaskDelay(50 / portTICK_RATE_MS);
			if(pinRead(SW2) == HIGH){
				pressed2 = 0;
				cisloLinky ++;
				if(cisloLinky > maxLinka)
					cisloLinky = 0;
			}
		}
		if(pinRead(SW3) == HIGH && pressed3 && linkaStav == VYPNUTA && hodinyStav == NASTAVENE){
			vTaskDelay(50 / portTICK_RATE_MS);
			if(pinRead(SW3) == HIGH){
				pressed3 = 0;
				linkaStav = SMER;
				switch(cisloLinky){
				case 0:
					if(smer == 1)
						FlipArray(linka1,linka1Pocet);
					break;
				case 1:
					if(smer == 1)
						FlipArray(linka2,linka2Pocet);
					break;
				}
			}
		}

		if(pinRead(SW2) == LOW && !pressed2 && linkaStav == SMER){
			vTaskDelay(50 / portTICK_RATE_MS);
			if(pinRead(SW2) == LOW){
				pressed2 = 1;
			}
		}
		if(pinRead(SW3) == LOW && !pressed3 && linkaStav == SMER){
			vTaskDelay(50 / portTICK_RATE_MS);
			if(pinRead(SW3) == LOW){
				pressed3 = 1;
			}
		}
		if(pinRead(SW2) == HIGH && pressed2 && linkaStav == SMER){
			vTaskDelay(50 / portTICK_RATE_MS);
			if(pinRead(SW2) == HIGH){
				pressed2 = 0;
				smer ++;
				if(smer > 1)
					smer = 0;
			}
		}
		if(pinRead(SW3) == HIGH && pressed3 && linkaStav == SMER){
			vTaskDelay(50 / portTICK_RATE_MS);
			if(pinRead(SW3) == HIGH){
				pressed3 = 0;
				switch(cisloLinky){
				case 0:
					if(smer == 1)
						FlipArray(linka1,linka1Pocet);
					break;
				case 1:
					if(smer == 1)
						FlipArray(linka2,linka2Pocet);
					break;
				}
				linkaStav = ZAPNUTA;
				dvereStav = ZAVRENE;
			}
		}
		vTaskDelay(50 / portTICK_RATE_MS);
	}
}

void Obrazovka(void){
	while(1){
	switch(dvereStav){
	case ZAVRENE:
		LCD_clear();
		LCD_set_cursor(0, 0);
		LCD_puts("Ovladaci panel\0");
		LCD_set_cursor(2, 0);
		LCD_puts("Dvere jsou zavrene\0");
		xSemaphoreTake(G_Mutex, portMAX_DELAY);
		sprintf(textHodiny, "%i%i:%i%i",hodina10,hodina1,minuta10,minuta1);
		xSemaphoreGive(G_Mutex);
		LCD_set_cursor(4, 9);
		LCD_puts(textHodiny);
		break;
	case OTEVRENE:
		LCD_clear();
		LCD_set_cursor(0, 0);
		LCD_puts("Ovladaci panel\0");
		LCD_set_cursor(2, 0);
		LCD_puts("Dvere jsou otevrene\0");
		xSemaphoreTake(G_Mutex, portMAX_DELAY);
		sprintf(textHodiny, "%i%i:%i%i",hodina10,hodina1,minuta10,minuta1);
		xSemaphoreGive(G_Mutex);
		LCD_set_cursor(4, 9);
		LCD_puts(textHodiny);
	}
	if(hodinyStav == NENASTAVENE){
		LCD_clear();
		LCD_set_cursor(0, 0);
		LCD_puts("Nastaveni hodin\0");
		sprintf(textHodiny, "%i%i:%i%i",hodina10,hodina1,minuta10,minuta1);
		LCD_set_cursor(4, 9);
		LCD_puts(textHodiny);
	}
	if(linkaStav == VYPNUTA && hodinyStav == NASTAVENE){
		switch(cisloLinky){
		case 0:
			LCD_clear();
			LCD_set_cursor(0, 0);
			LCD_puts("Vyber linky\0");
			LCD_set_cursor(2, 0);
			LCD_puts("* Linka 1\0");
			LCD_set_cursor(3, 0);
			LCD_puts("  Linka 2\0");
			break;
		case 1:
			LCD_clear();
			LCD_set_cursor(0, 0);
			LCD_puts("Vyber linky\0");
			LCD_set_cursor(2, 0);
			LCD_puts("  Linka 1\0");
			LCD_set_cursor(3, 0);
			LCD_puts("* Linka 2\0");
			break;
		}
	}
	if(linkaStav == SMER){
		switch(smer){
		case 0:
			LCD_clear();
			LCD_set_cursor(0, 0);
			LCD_puts("Smer ke konecne\0");
			LCD_set_cursor(2, 0);
			LCD_puts("* -> \0");
			LCD_set_cursor(3, 0);
			LCD_puts("  <- \0");
			break;
		case 1:
			LCD_clear();
			LCD_set_cursor(0, 0);
			LCD_puts("Smer ke konecne\0");
			LCD_set_cursor(2, 0);
			LCD_puts("  -> \0");
			LCD_set_cursor(3, 0);
			LCD_puts("* <- \0");
			break;
			}
		}
	vTaskDelay(50 / portTICK_RATE_MS);
	}
}
void Hodiny(void){

	const TickType_t xFrequency = 60000 / portTICK_RATE_MS;
	TickType_t xLastWakeTime;

	while(1){
		if(hodinyStav == NASTAVENE){
			xLastWakeTime = xTaskGetTickCount();
			vTaskDelayUntil(&xLastWakeTime, xFrequency);
			xSemaphoreTake(G_Mutex, portMAX_DELAY);
			minuta1++;
			if(minuta1>9){
				minuta1 = 0;
				minuta10++;
			}
			if(minuta10>5){
				minuta10 = 0;
				hodina1++;
			}
			if(hodina1>3 && hodina10==2){
				hodina1 = 0;
				hodina10++;
			}
			else if(hodina1>9){
				hodina1 = 0;
				hodina10++;
			}
			if(hodina10>2){
				hodina10 = 0;
			}
			xSemaphoreGive(G_Mutex);
		}
		if(hodinyStav == NENASTAVENE)
			vTaskDelay(50 / portTICK_RATE_MS);
	}
}
void FlipArray(char array[20][30], int count){
	if(count == 0 || array == NULL)
		return;
	int liche = count % 2;
	if(liche == 1){
		int i = 0;
		int j = count-1;
		while(i < (count-1)/2){
			char string[64];
			strcpy(string, array[i]);
			strcpy(array[i], array[j]);
			strcpy(array[j],string);
			i++;
			j--;
		}
	}else{
		int i = 0;
		int j = count-1;
		while(i < count/2){
			char string[64];
			strcpy(string, array[i]);
			strcpy(array[i], array[j]);
			strcpy(array[j],string);
			i++;
			j--;
		}
	}
}
////////////////////////////////////////////////////////////////////////////////
// EOF
////////////////////////////////////////////////////////////////////////////////
