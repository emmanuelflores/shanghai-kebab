//created by chen and Connor Feng
//2013.12.29
//Jie Yang's LED board matrix project

#include <rgb_matrix.h>
#include <SPI.h>

unsigned long time=0;
unsigned int tick_100ms = 0;
unsigned char counter=0;

#define N_X 3
#define N_Y 3

//Hardware SPI
#define DATA_PIN  11
#define CLK_PIN   13

#define LATCH_PIN 8

rgb_matrix M = rgb_matrix(N_X, N_Y, DATA_PIN, CLK_PIN, LATCH_PIN);

unsigned char cmd[50]={0},cmd_num=0;
String inData;
char received;
int x;
int y;

void setup()
{
  //delay(200);
  Serial.begin(9600);
  x=0;
  y=0;

}
void hook(void)
{
//    int i = 0;
//    unsigned long enter_time,exit_time;
//    enter_time = micros();
// 
//    if((++counter)%10 == 0)
//    {
//        if(millis() - time >= 100)
//        {
//            time = millis();
//            tick_100ms ++;
//           
//            
//            if(tick_100ms%2 == 0)
//            {
//            }
//            if(tick_100ms%5 == 0)
//            {
//             
//            }
//            if(tick_100ms%10 == 0)
//            {
//            }
//            if(tick_100ms%20 == 0)
//          
//  {
//            }
//            if(tick_100ms%50 == 0)
//            {
//            }
//        }
//    }
//     exit_time = micros();
//     if(enter_time < exit_time)
//     {
//       if(exit_time - enter_time < 300)
//       {
//         delayMicroseconds(300 - (exit_time-enter_time));
//       }
//     }

     while (Serial.available() > 0)
    {
   
      received = Serial.read();
      inData += received;
       if (received == '\n')
        {
          x = (int(inData.charAt(0)) - 65);
          y = (int(inData.charAt(1)) - 65);
       
           inData = ""; // Clear recieved buffer
         }
 }
 
M.plot(x,y,230,TOP_LAYER);



}
void loop()
{ 
   

  
   
       M.display(hook);
    
    
  // M.plot(x,y);  

}
