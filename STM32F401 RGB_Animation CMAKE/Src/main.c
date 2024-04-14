/**
 ******************************************************************************
 * @file           : main.c
 * @author         : Mohamed Osama
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2024 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 ******************************************************************************
 */
#include"main.h"
#include <string.h>

// ----------------------------------------------------------------------------
void IR_Handler(void){
	if(IR_u32GetReceivedData() == IR_TV_REMOTE_OK)
	{
		RGB_voidSetColor(&RGB_Lcfg, RGB_RED_COLOR);
		Delay_ms(500);
		RGB_voidSetColor(&RGB_Lcfg, RGB_GREEN_COLOR);
		Delay_ms(500);
		RGB_voidSetColor(&RGB_Lcfg, RGB_BLUE_COLOR);
		Delay_ms(500);
		RGB_voidSetColor(&RGB_Lcfg, RGB_YELLOW_COLOR);
		Delay_ms(500);
		RGB_voidSetColor(&RGB_Lcfg, RGB_PURPLE_COLOR);
		Delay_ms(500);
		RGB_voidSetColor(&RGB_Lcfg, RGB_CYAN_COLOR);
		Delay_ms(500);
		RGB_voidSetColor(&RGB_Lcfg, RGB_WHITE_COLOR);
		Delay_ms(500);
		RGB_voidSetColor(&RGB_Lcfg, RGB_BLACK_COLOR);
		Delay_ms(500);
	}
}
u32 arr[5]={0};
int main(void)
{
	RGB_voidInit(&RGB_Lcfg);
	IR_voidInit(&IR_Config,IR_Handler);
	memcpy(arr,5,5);   /* used here for testing standard library */
	while(1)
	{

	
	}
}
