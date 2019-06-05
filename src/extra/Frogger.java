  int frogX = 400;
  int frogY = 575;
  int carX1 = 0;
  int carX2 = 800;
  boolean intersects(car car) {
      if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
      {
             return true;
      }
      else 
      {
             return false;
      }
}
  void setup(){
    size(800,600);
  }
  void draw(){
    background(0,0,0);
    fill(0,255,0);
    ellipse(frogX,frogY, 50,50);
    carX1+=50;
    carX2-=50;
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
   else if(carX1>800){
     carX1=0;
   }
   else if(carX2<0){
     carX2=800;
   }
   car one = new car(carX1, 250, 100, 100);
   one.display();
   if (intersects(one)){
     frogX = 400;
     frogY = 575;
   }
   car two = new car(carX1, 450, 100, 100);
   two.display();
   if (intersects(two)){
     frogX = 400;
     frogY = 575;
   } 
   car three = new car(carX2, 300, 100, 100);
   three.display();
  if (intersects(three)){
     frogX = 400;
     frogY = 575;
   } 
   car four = new car(carX2, 100, 100, 100);
   four.display();
  if (intersects(four)){
     frogX = 400;
     frogY = 575;
   }
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
  int getX(){
    return this.x;
}
  int getY(){
    return this.y;
  }
  int getSize(){
    return this.size;
  }
  }
     
     

