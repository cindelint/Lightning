import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Lightning extends PApplet {

float y1 = 300;
float x1 = (float) (Math.random() * 300);
int a = color((int)(Math.random()*60+195), (int)(Math.random()*240+55), 0);

public void setup() {
	
	for (int i=0; i<300; i++) {
		stroke(0,i/10,i/5);
		rect(0,i,300,1);
	}
}

public void draw() {
	hill();
	lightning();
}

public void mousePressed() {
	x1 = (float) (Math.random() * 300);
	y1 = 0;
	a = color((int)(Math.random()*60+195), (int)(Math.random()*240+55), 0);
}

public void lightning() {
	float y2 = (float) (Math.random() * 20);
	float x2 = (float) (Math.random() * 40 - 20);
	stroke(a, 300-y1);
	strokeWeight(700/(300+y1));
	line(x1,y1,x1+x2,y1+y2);
	x1 = x1+x2;
	y1 = y1+y2;
}

public void hill() {
	fill(0xff004407);
	noStroke();
	ellipse(150,500,800,475);
	for (int i=0; i<20; i++) {
		stroke(0xff004407);
		ellipse(150,500,800-i,475-i);
	}
}
  public void settings() { 	size(300,300); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lightning" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
