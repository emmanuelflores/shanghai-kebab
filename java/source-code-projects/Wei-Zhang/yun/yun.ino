#include <Servo.h>
 int a_data = 0; // 创建变量用于储存在串行端口收到的值
int ledPin1 = 9;//设定一个LED插口，用于检测收到的值
int ledPin = 13;//设定一个LED插口，用于检测收到的值
   Servo myservo;  // 定义舵机对象，最多八个 
 
   int pos = 0;    // 定义舵机转动位置
   boolean doit=true;
   int count=0;
 
   void setup()
   {
      Serial.begin(9600);//定义数据传输率为9600比特
  
      pinMode(9, OUTPUT);//定义9号插口为输出模式  
      pinMode(13,OUTPUT);
      myservo.attach(9);  // 设置舵机控制针脚
   }
 
   void loop()
  {
   if (Serial.available() > 0) {// 在收到数据后再做出处理:   
    a_data = Serial.read(); // 将收到的值储存在变量中
    if(a_data){//如果收到“1”（a_data为真），点亮LED，否则熄灭
    count=count+1;
    if(count%2==0){
      digitalWrite(ledPin, HIGH); 
    }else{
     digitalWrite(ledPin, LOW); 
    }
      
     if(doit==true){
      pos=pos+30;
     myservo.write(pos);
     }
     if(pos>90){
     doit=false;
     pos=0;
     myservo.write(0);
     }
          
       Serial.println(a_data);
      
    }
       else{
         digitalWrite(ledPin, LOW);
      myservo.write(0);
    doit=true;
    count=0;
    }
  }
  } 

