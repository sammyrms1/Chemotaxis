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

public class Chemotaxis extends PApplet {

Bacteria sRollins;
Bacteria sSting;
Bacteria [] fans;
Bacteria [] fans2;
public void setup()
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

public void draw()
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

	public void move()
	{
		bacX += (int)(Math.random()*5)-2;
		bacY += (int)(Math.random()*5)-2;
	}

	public void show()
	{
		fill(bacCol);
		ellipse(bacX, bacY, 20, 20);
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
