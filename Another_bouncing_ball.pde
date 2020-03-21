float x = 600;
float y = 300;

float xSpeed = 5;
float ySpeed = 5;

float sizeXSpeed = 50;
float sizeYSpeed = 50;

float sizeX = 0;
float sizeY = 0;

float color1;
float color2;
float color3;

void changeColor() {
  color1 = random(255);
  color2 = random(255);
  color3 = random(255);
  fill(color1, color2, color3);
}

void changeSize()  {
  
  sizeX += sizeXSpeed;
  sizeY += sizeYSpeed;
  
  if(sizeX == 300 || sizeX == 0 && sizeY == 300 || sizeY == 0) {
    sizeXSpeed *= -1;
    sizeYSpeed *= -1;
  }
}

void setup() {
  size(600, 600);
}
void draw() {
  background(245, 129, 12);
 
  
  x += xSpeed;
  if (x > width || x < 0) {
    xSpeed *= -1; 
    changeColor();
    changeSize();
  }
  
  y += ySpeed;
  if (y > height || y < 0) {
    ySpeed *= -1;
    changeColor();
    changeSize();
  }

   fill(color1, color2, color3);
   noStroke();
   ellipse(x, y, sizeX, sizeY);
   
 }
