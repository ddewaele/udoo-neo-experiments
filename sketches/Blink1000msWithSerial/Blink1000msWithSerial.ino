void setup() {
  Serial.begin(9600);
  pinMode(13, OUTPUT);
}

// the loop function runs over and over again forever
void loop() {
  Serial.println("LED ON");
  digitalWrite(13, HIGH);   
  delay(1000);            
  Serial.println("LED OFF");  
  digitalWrite(13, LOW);    
  delay(1000);              
}
