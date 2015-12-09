void setup() {
  pinMode(13, OUTPUT);
}

// the loop function runs over and over again forever
void loop() {
  digitalWrite(13, HIGH);   
  delay(300);              
  digitalWrite(13, LOW);    
  delay(300);              
}
