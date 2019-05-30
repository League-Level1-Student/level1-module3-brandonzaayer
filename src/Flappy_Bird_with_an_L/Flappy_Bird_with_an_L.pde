//My flappy bird
boolean gameOver = false;
int X = 225;
int Y = 300;
int x = 600;
int score = 0;
int tubeWidth = 50;
int birdYVelocity = 30;
int gravity = 2;
int gap = 100;
int fixAll = 0;
int upperPipeHeight = (int) random(100, 400);
int lowerY = upperPipeHeight + gap;
int lowerPipeHeight = 650-upperPipeHeight-gap;
void setup() {
  size(450, 600);
}
void draw() {
  if(gameOver){
     print("Pipe was hit. Game Over");
    stroke(random(0,255), random(0,255), random(0,255));
    fill(random(0,255),random(0,255),random(0,255));
    rect (0, 0, 450, 600);
  }
  else{
  Y = Y+gravity;
  x = x-7;
  background(0, 0, 255);
  fill(243, 252, 3);
  stroke(243, 252, 3);
  ellipse(X, Y, 10, 10);
  fill(96, 255, 72);
  stroke(96, 255, 72);
  rect(x, 0, tubeWidth, upperPipeHeight);
  fill(96, 255, 72);
  stroke(96, 255, 72);
  rect(x, lowerY, tubeWidth, lowerPipeHeight);

  teleportPipes();
  if (intersectsPipes()) {
   gameOver = true;
  }
  else{
   text("Score: " +score , 200, 50); 
  }
}
}
void mousePressed() {
  if (true) {
    Y = Y- birdYVelocity;
  }
}
void teleportPipes() {
  if (x < 0) {
    x =+ 600;
    upperPipeHeight = (int) random(100, 400);
    lowerPipeHeight = 600-upperPipeHeight-gap;
    lowerY = 0 + upperPipeHeight + 50;
  }
}
boolean intersectsPipes() { 
if (Y < upperPipeHeight && X > x && X < (x+ tubeWidth)){
          return true; 
        }
     else if (Y>lowerY && X > x && X < (x+tubeWidth)) {
          return true; 
        }
        else if (Y>=600){
        return true;
}
else if (X > x+tubeWidth){
  fixAll++;
  if(fixAll == 25){
    score++;
    fixAll = 0;
  }
  return false;
 
}
     else { return false; }
  
}


//Mr. Keith's inferior Falppy bird
boolean gameOver = false;
int X = 225;
float Y = 300;
int x = 600;
int score = 0;
int tubeWidth = 50;
float birdYVelocity = 10;
float gravity = .5;
int gap = 100;
int fixAll = 0;
int upperPipeHeight = (int) random(100, 400);
int lowerY = upperPipeHeight + gap;
int lowerPipeHeight = 650-upperPipeHeight-gap;
void setup() {
  size(450, 600);
}
void draw() {
  if(gameOver){
     print("Pipe was hit. Game Over");
    stroke(random(0,255), random(0,255), random(0,255));
    fill(random(0,255),random(0,255),random(0,255));
    rect (0, 0, 450, 600);
  }
  else{
  Y += birdYVelocity;
  birdYVelocity += gravity;
  x = x-7;
  background(0, 0, 255);
  fill(243, 252, 3);
  stroke(243, 252, 3);
  ellipse(X, Y, 10, 10);
  fill(96, 255, 72);
  stroke(96, 255, 72);
  rect(x, 0, tubeWidth, upperPipeHeight);
  fill(96, 255, 72);
  stroke(96, 255, 72);
  rect(x, lowerY, tubeWidth, lowerPipeHeight);

  teleportPipes();
  if (intersectsPipes()) {
   gameOver = true;
  }
  else{
   text("Score: " +score , 200, 50); 
  }
}
}
void mousePressed() {
  if (true) {
    birdYVelocity=-7;
  }
}
void teleportPipes() {
  if (x < 0) {
    x =+ 600;
    upperPipeHeight = (int) random(100, 400);
    lowerPipeHeight = 600-upperPipeHeight-gap;
    lowerY = 0 + upperPipeHeight + 50;
  }
}
boolean intersectsPipes() { 
if (Y < upperPipeHeight && X > x && X < (x+ tubeWidth)){
          return true; 
        }
     else if (Y>lowerY && X > x && X < (x+tubeWidth)) {
          return true; 
        }
        else if (Y>=600){
        return true;
}
else if (X > x+tubeWidth){
  fixAll++;
  if(fixAll == 25){
    score++;
    fixAll = 0;
  }
  return false;
 
}
     else { return false; }
  
}


