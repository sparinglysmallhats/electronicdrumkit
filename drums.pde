// these constants won't change:
const int ledPin0 = 0;      // led connected to digital pin 0
const int ledPin1 = 1;      // led connected to digital pin 1 and so on...
const int ledPin2 = 2;
const int ledPin3 = 3;
const int ledPin4 = 4;

const int knockSensor0 = 0; // the piezo is connected to analog pin 0
const int knockSensor1 = 1; // the piezo is connected to analog pin 1
const int knockSensor2 = 2; // the piezo is connected to analog pin 2
const int knockSensor3 = 3; // the piezo is connected to analog pin 3
const int knockSensor4 = 4; // the piezo is connected to analog pin 4

const int threshold0 = 50;  // threshold value to decide when the detected sound is a knock or not
const int threshold1 = 50;
const int threshold2 = 250;
const int threshold3 = 250;
const int threshold4 = 250;

// these variables will change:
int sensorReading0 = 0;      // variable to store the value read from the sensor pin
int sensorReading1 = 0;
int sensorReading2 = 0;
int sensorReading3 = 0;
int sensorReading4 = 0;

void setup() {
 pinMode(ledPin0, OUTPUT); // declare the ledPin as as OUTPUT
 pinMode(ledPin1, OUTPUT);
 pinMode(ledPin2, OUTPUT);
 pinMode(ledPin3, OUTPUT);
 pinMode(ledPin4, OUTPUT);
 
 Serial.begin(9600);       // use the serial port to talk to the pc peer
 
 digitalWrite(ledPin0, LOW);
 digitalWrite(ledPin1, LOW);
 digitalWrite(ledPin2, LOW);
 digitalWrite(ledPin3, LOW);
 digitalWrite(ledPin4, LOW);
}

void loop() {
  // read the sensor and store it in the variable sensorReading:
  sensorReading0 = analogRead(knockSensor0);
  sensorReading1 = analogRead(knockSensor1);
  sensorReading2 = analogRead(knockSensor2);
  sensorReading3 = analogRead(knockSensor3);
  sensorReading4 = analogRead(knockSensor4);
  
  
  // if the sensor reading is greater than the threshold:
  if (sensorReading0 >= threshold0) 
  {      
    digitalWrite(ledPin0, HIGH);
    delay(250);
    Serial.println("drum0!");
    digitalWrite(ledPin0, LOW);    
  }
  
  if (sensorReading1 >= threshold1) 
  {      
    digitalWrite(ledPin1, HIGH);
    delay(250);
    Serial.println("drum1!");
    digitalWrite(ledPin1, LOW);    
  }
  
  if (sensorReading2 >= threshold2) 
  {      
    digitalWrite(ledPin2, HIGH);
    delay(250);
    Serial.println("drum2!");
    digitalWrite(ledPin2, LOW);    
  }
  
  if (sensorReading3 >= threshold3) 
  {      
    digitalWrite(ledPin3, HIGH);
    delay(250);
    Serial.println("drum3!");
    digitalWrite(ledPin3, LOW);    
  }
  
  if (sensorReading4 >= threshold4) 
  {      
    digitalWrite(ledPin4, HIGH);
    delay(250);
    Serial.println("drum4!");
    digitalWrite(ledPin4, LOW);    
  }
  
}

