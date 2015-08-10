// Settings

// Delcarations
/*
Please go to processing->sketch->Import Library... ->Add Library... and search for firmata
*/
import processing.serial.*;
import cc.arduino.*;

Arduino arduino;

// Setup
void setup(){
	size(displayWidth, displayHeight,P2D);
	background(0);
	printArray(Arduino.list());
	arduino = new Arduino(this, Arduino.list()[5], 57600);
	arduino.pinMode(13, Arduino.OUTPUT);
}

void draw(){
	background(0);
	float ellipseSize = map(arduino.analogRead(0),850,1023,0,512);
	fill(255);
	noStroke();
	ellipse(width/2,height/2,ellipseSize,ellipseSize);
}