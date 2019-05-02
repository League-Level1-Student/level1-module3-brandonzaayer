int X = 500;
int Y = 250;
int x = 1000;
int tubeWidth = 50;
int birdYVelocity = 30;
int gravity = 2;
int upperPipeHeight = (int) random(100, 400);
void setup(){
  size(1000, 500);
  



}
void draw(){
  Y = Y+gravity;
  x = x-10;
  background(0, 0, 255);
fill(243, 252, 3);
stroke(243, 252, 3);
ellipse(X, Y, 10, 10);
fill(96, 255, 72);
stroke(96, 255, 72);
rect(x, 0, tubeWidth, upperPipeHeight);
fill(96, 255, 72);
rect(x, 1000, tubeWidth, 300);
 teleportPipes();
}
void mousePressed(){
  if (true){
    Y = Y- birdYVelocity;
 
}



}
void teleportPipes(){
 if (x < 0){
 x =+ 1000; 
 }
  
}