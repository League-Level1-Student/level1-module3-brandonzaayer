
	int frogX = 400;
	int frogY = 545;
	void setup(){
	  size(800,600);
	  
	  
	}
	void draw(){
	  background(0,0,0);
	  fill(0,255,0);
	  ellipse(frogX,frogY, 50,50);
	 if(frogX>800){
	   frogX=775;
	 }
	 else if(frogX<0){
	   frogX=25;
	 }
	 else if(frogY>600){
	   frogY=575;
	 }
	 else if(frogY<0){
	   frogY=25;
	 }
	 car one = new car(0, 200, 100, 100);
	 one.display();
	 car two = new car(0, 400, 100, 100);
	 two.display();
	 }
	 void keyPressed()
	{
	      if(key == CODED){
	            if(keyCode == UP)
	            {
	                 frogY-=50;
	            }
	            else if(keyCode == DOWN)
	            {
	                  frogY+=50; 
	            }
	            else if(keyCode == RIGHT)
	            {
	                  frogX+=50;
	            }
	            else if(keyCode == LEFT)
	            {
	                 frogX-=50;
	            }
	      }
	}
	public class car{
	int x;
	int y;
	int size;
	int speed;
	   public car( int x, int y, int size, int speed){
	     this.x = x;
	     this.y = y;
	     this.size = size;
	     this.speed = speed;
	   }
	   void display() 
	{
	      fill(255,0,0);
	      rect(x , y, size, 50);
	}
	}
	  
	   
	   


