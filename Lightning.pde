float y1 = 300;
float x1 = (float) (Math.random() * 300);
color a = color((int)(Math.random()*60+195), (int)(Math.random()*240+55), 0);


void setup() {
	size(300,300);
	for (int i=0; i<300; i++) {
		stroke(0,i/10,i/5);
		rect(0,i,300,1);
	}
	textAlign(CENTER,CENTER);
	PFont myFont = createFont("monospace", 12);
	textFont(myFont);
}

void draw() {
	hill();
	figure();
	lightning();

	if (y1 > 220 && x1 > 135 && x1 < 165) {
		noLoop();
		background(0,0,0);
		fill(255,255,255);
		text("You have been shot down by your own hubris.", 150,150);
	}
}

void mousePressed() {
	x1 = (float) (Math.random() * 300);
	y1 = 0;
	a = color((int)(Math.random()*60+195), (int)(Math.random()*240+55), 0);
}

void lightning() {
	if (y1 < 300) {
		float y2 = (float) (Math.random() * 20);
		float x2 = (float) (Math.random() * 40 - 20);
		stroke(a, 300-y1);
		strokeWeight(700/(300+y1));
		line(x1,y1,x1+x2,y1+y2);
		x1 = x1+x2;
		y1 = y1+y2;
	}
}

void hill() {
	fill(#004407);
	noStroke();
	ellipse(150,500,800,475);
	for (int i=0; i<20; i++) {
		stroke(#004407);
		ellipse(150,500,800-i,475-i);
	}
	fill(255,255,255);
	text("Call lightning from the sky".toUpperCase(), 150,275);
}

void figure() {
	noFill();
	stroke(160,160,160);
	strokeWeight(1);
	ellipse(150,210,30,30); //head
	line(150,225,150,250); //body
	line(150,250,135,275); //legs
	line(150,250,165,275);
	line(150,235,130,220); //arms
	line(150,235,170,220);

	//face
	ellipse(150,212,15,5);
	ellipse(143,204,6,3);
	ellipse(157,204,6,3);
}