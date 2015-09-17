Bacteria sRollins;
Bacteria sSting;
Bacteria [] fans;
Bacteria [] fans2;
void setup()
 {     
 	size(640, 480);
 	sRollins = new Bacteria (200, 200, 50);
 	sSting = new Bacteria (400, 200, 255);
 	fans = new Bacteria[160];
 	fans2 = new Bacteria[160];
 	for (int i = 0; i < fans.length; i++) {
 		fans[i] = new Bacteria (i*4, 30, 100);
 		fans2[i] = new Bacteria (i*4, 440, 100);
 	}
 }

void draw()
 {
 	background(0);
 	sRollins.move();
 	sRollins.show();
 	sSting.move();
 	sSting.show();
 	for (int i = 0; i < fans.length; i++) {
 		fans[i].move();
 		fans[i].show();
 		fans2[i].move();
 		fans2[i].show();
 	}
 }

class Bacteria    
{
	int bacX, bacY, bacCol;
	Bacteria(int x, int y, int col)
	{
		bacX = x;
		bacY = y;
		bacCol = col;
	}

	void move()
	{
		bacX += (int)(Math.random()*5)-2;
		bacY += (int)(Math.random()*5)-2;
	}

	void show()
	{
		fill(bacCol);
		ellipse(bacX, bacY, 20, 20);
	}
}