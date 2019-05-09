int X = 225;
int Y = 300;
int x = 300;
int tubeWidth = 50;
int birdYVelocity = 30;
int gravity = 2;
int upperPipeHeight = (int) random(200, 250);
int lowerY = 0 + upperPipeHeight + 50;
void setup() {
  size(450, 600);
}
void draw() {
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
  stroke(96, 255, 72);
  rect(x, 450, tubeWidth, 600);

  teleportPipes();
  if (intersectsPipes()) {
    print("Pipe was hit. Game Over");
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
    upperPipeHeight = (int) random(200, 250);
  }
}
boolean intersectsPipes() { 

  if (Y < upperPipeHeight && X > x && X < (x+tubeWidth)) {
    return true;
  } else if (Y>600 && X > x && X < (x+tubeWidth)) {
    return true;
  } else { 
    return false;
  }
}
