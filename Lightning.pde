float y1 = 300;
float x1 = (float) (Math.random() * 300);
color a = color((int)(Math.random()*30+225), (int)(Math.random()*50+205), 0);

void setup() {
	size(300,300);
	background(#000000);
}

void draw() {
	lightning();
}

void mousePressed() {
	x1 = (float) (Math.random() * 300);
	y1 = 0;
	a = color((int)(Math.random()*30+225), (int)(Math.random()*50+205), 0);
}

void lightning() {
	float y2 = (float) (Math.random() * 20);
	float x2 = (float) (Math.random() * 40 - 20);
	stroke(a, 300-y1);
	strokeWeight(2);
	line(x1,y1,x1+x2,y1+y2);
	x1 = x1+x2;
	y1 = y1+y2;
}

