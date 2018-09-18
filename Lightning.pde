float y1 = 300;
float x1 = (float) (Math.random() * 300);
color a = color((int)(Math.random()*60+195), (int)(Math.random()*240+55), 0);

void setup() {
	size(300,300);
	for (int i=0; i<300; i++) {
		stroke(0,i/10,i/5);
		rect(0,i,300,1);
	}
}

void draw() {
	hill();
	lightning();
}

void mousePressed() {
	x1 = (float) (Math.random() * 300);
	y1 = 0;
	a = color((int)(Math.random()*60+195), (int)(Math.random()*240+55), 0);
}

void lightning() {
	float y2 = (float) (Math.random() * 20);
	float x2 = (float) (Math.random() * 40 - 20);
	stroke(a, 300-y1);
	strokeWeight(700/(300+y1));
	line(x1,y1,x1+x2,y1+y2);
	x1 = x1+x2;
	y1 = y1+y2;
}

void hill() {
	fill(#004407);
	noStroke();
	ellipse(150,500,800,475);
	for (int i=0; i<20; i++) {
		stroke(#004407);
		ellipse(150,500,800-i,475-i);
	}
}