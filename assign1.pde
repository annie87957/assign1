PImage backgroundImage;
PImage groundhogImage;
PImage lifeImage;
PImage soilImage;
PImage soldierImage;
PImage robotImage;

int soldierX;
int soldierY;
int soldierspeed=2;
int mag;

int robotX;
int robotY;

int dX;
int bulletX;
int bulletY;
int bulletSpeed=2;
int bullet1;
int bullet2;



void setup() {
	size(640, 480, P2D);
  backgroundImage = loadImage("bg.jpg");
  groundhogImage = loadImage("groundhog.png");
  lifeImage = loadImage("life.png");
  soilImage = loadImage("soil.png");
  soldierImage = loadImage("soldier.png");
  robotImage = loadImage("robot.png");
  
  //soldier
  mag=floor(random(4));
  soldierY=160+80*mag;
  
  //robot
  mag=floor(random(4));
  robotX=floor(random(160,561));
  robotY=160+80*mag;
  
  //bullet
  bulletY=robotY+37;
  bulletX=robotX+25;
}

void draw() {
  //background
  image(backgroundImage,0,0);
  
  //soil
  image(soilImage,0,160);
  

  
  //bullet
  strokeWeight(10);
  fill(255,0,0);
  stroke(255,0,0);
  line(bullet1,bulletY,bullet2,bulletY);//bullet1=bulletX...
  dX=(dX+bulletSpeed)%(160+1);
  bulletX = robotX+25-dX;
  bullet1 = min(bulletX,robotX+25);
  bullet2 = min(bulletX+40,robotX+25);
  
  //robot
  image(robotImage,robotX,robotY);
  
  //sun
  stroke(255, 255, 0);
  strokeWeight(5);
  fill(253,184,19);
  ellipse(590,50,120,120);
 
  
  //grass
  noStroke();
  fill(124, 204, 25);
  rect(0,145,640,15);
  
  //groundhog
  image(groundhogImage,280,80);
  
  //soldier
  image(soldierImage,soldierX,soldierY);
  soldierX=(soldierX+soldierspeed)%(640+1);
 
  //life
  image(lifeImage,10,10);
  image(lifeImage,80,10);
  image(lifeImage,150,10);
}
