Bacteria sRollins;
Bacteria sSting;
Bacteria [] fans;
Bacteria [] fans2;
void setup()
 {     
 	size(800, 600);
 	sRollins = new Bacteria (250, 300, 50);
 	sSting = new Bacteria (550, 300, 255);
 	fans = new Bacteria[200];
 	fans2 = new Bacteria[200];
 	for (int i = 0; i < fans.length; i++) {
 		fans[i] = new Bacteria (i*4, 30, 100);
 		fans2[i] = new Bacteria (i*4, 560, 100);
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
	boolean eaten;
	Bacteria(int x, int y, int col)
	{
		bacX = x;
		bacY = y;
		bacCol = col;
		eaten = false;
	}

	void move()
	{
		bacX += (int)(Math.random()*5)-2;
		bacY += (int)(Math.random()*5)-2;
		if(mousePressed){
			if(bacX < mouseX){
				bacX += 2;
			}
			else if (bacX > mouseX){
				bacX -= 2;
			}
			if(bacY < mouseY){
				bacY += 2;
			}
			else if (bacY > mouseY){
				bacY -= 2;
			}
		}
	}

	void show()
	{
		if(eaten == false){
		fill(bacCol);
		ellipse(bacX, bacY, 20, 20);
		}
	}
}