 //declare bacteria variables here
 Bacteria [] bact;
 int i;
void setup()   
 {     
 	//initialize bacteria variables here
 	size(600,600);
 	background(0);
 	bact = new Bacteria[400];
 		for(int i = 0; i < bact.length; i++)
 		{
 			bact[i] = new Bacteria((int)(Math.random()*600), (int)(Math.random()*600));
 		}
	 }   
 void draw()   
 { 
 	background(0);
 	for(int i = 0; i < bact.length; i++)
	{
 		bact[i].show();
 		bact[i].move();
 	}
 }  
 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY, myColor;
 	Bacteria(int x, int y)
 	{
 		myX = x;
 		myY = y;
 		myColor = color((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
 	}   
 	void move()
 	{
 		myX = myX + (int)(Math.random()*7)-3;
 		myY = myY + (int)(Math.random()*7)-3;
 	}

 	void show()
 	{
 		fill(myColor);
 		ellipse(myX, myY, 10, 10);
 	}
 }    