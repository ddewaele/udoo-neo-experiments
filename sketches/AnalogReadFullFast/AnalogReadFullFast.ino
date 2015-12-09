void setup()
{
  Serial.begin(9600);
}


void loop()
{
  int lastReading = 0;
  Serial.print("{");
  for(int i=0;i<6;i++) {
     if(i>0) {
       Serial.print(",");
     }
     Serial.print("\"a");
     Serial.print(i);
     Serial.print("\":");
    lastReading = analogRead(0);
     Serial.print(analogRead(i));
  }
  Serial.print(",\"volts\":\"");
  Serial.print(lastReading * (3.3 / 4095.0));
  Serial.print("v\"");

  Serial.println("}");
  delay(100);
}
