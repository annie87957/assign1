PImage bg1, bg2, enemy, fighter, hp, treasure;

void setup () {
  size(640,480) ;
  bg1 = loadImage ("img/bg1.png");
  bg2 = loadImage ("img/bg2.png");
  enemy = loadImage ("img/enemy.png");
  fighter = loadImage ("img/fighter.png");
  hp = loadImage ("img/hp.png");
  treasure = loadImage ("img/treasure.png");
}

int bg1Pos = 640;
int bg2Pos = 0;
int enemyDistance = 0;
float hpAmount = random(70,190);
float treasurePosX = random(40,560);
float treasurePosY = random(60,420);

void draw() {
  image(bg1,-640+bg1Pos,0);
  image(bg2,-640+bg2Pos,0);
  bg1Pos += 5;
  bg1Pos = bg1Pos % 1280;
  bg2Pos += 5;
  bg2Pos = bg2Pos % 1280; //background scrolling
  image(fighter, 550, 240); // fighter position
  fill(255,0,0);
  noStroke();
  rect(50,30,hpAmount,20); //hp amount
  image(hp, 40, 30); //hp outline
  image(treasure, treasurePosX, treasurePosY); //treasure
  image(enemy, -40+enemyDistance, 100); 
  enemyDistance += 7;
  enemyDistance = enemyDistance % 680; //enemy movement
}
