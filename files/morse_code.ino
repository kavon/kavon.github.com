
// fixed throughout program
int outputLED = 13;
int timeUnit = 250;

void dot() {
  digitalWrite(outputLED, HIGH);
  delay(timeUnit);
  digitalWrite(outputLED, LOW);
  delay(timeUnit);
}

void dash() {
  digitalWrite(outputLED, HIGH);
  delay(3 * timeUnit);
  digitalWrite(outputLED, LOW);
  delay(timeUnit);
}

void endLetter() {
  delay(3 * timeUnit);
}

void endWord() {
  delay(7 * timeUnit);
}

void setup() {
  // initially, start the LED in an off state.
  digitalWrite(outputLED, LOW);

}

void loop() {
  // example of SOS

  // CHANGE THE CODE BELOW
  // TO BLINK YOUR WORD!

  // S
  dot();
  dot();
  dot();
  endLetter();

  // O
  dash();
  dash();
  dash();
  endLetter();

  // S
  dot();
  dot();
  dot();
  endLetter();

  endWord();
  

}
