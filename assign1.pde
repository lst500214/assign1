/* please implement your assign1 code in this file. */
  int x, y;
  int treasureX, treasureY;
  int hpWeightX, hpWeightY; 
  int enemyX, enemyY;
  int indexOne, indexTwo;
  //Declare variable "jet" "hpBar" and "treasure" of images.
  PImage jet, hpBar, treasure, bgOne, bgTwo, enemy; 
  
  
void setup () {
  size(640,480) ;  // must use this size.
  background(255);
  
  //loading images
  bgOne = loadImage("img/bg1.png");
  bgTwo = loadImage("img/bg2.png");
  jet = loadImage("img/fighter.png");
  hpBar = loadImage("img/hp.png");
  treasure = loadImage("img/treasure.png");
  enemy = loadImage("img/enemy.png");
  
  //set each x and y position
  x = 0;
  y = 0;
  
  //for background
  indexOne = width;
  indexTwo = 0;
  
  //give enemy a random y axis from 40  to 450 pixel;
  enemyX = 0;
  enemyY = floor(random(40, 450));

  //set HP Bar position with random X axis 
  hpWeightX = floor(random(10,195));
  hpWeightY = 30;

  //set treasure position in random X asix and Y asix
  treasureX = floor(random(200,550));
  treasureY = floor(random(40,450));
  
}


void draw() {
  background(255);
  
  //infinite looping background
 
 //bg one
  image(bgOne, indexOne - width, 0);
  indexOne++;
  indexOne %= width*2;
  
  //bg two
  image(bgTwo, indexTwo - width, 0);
  indexTwo++;
  indexTwo %= width*2;

  // set jet position
  image(jet, x+580, y + height/2);
  
  //random HP amount 
  fill(#FF0000);
  rect(x+10, y, hpWeightX, hpWeightY);
  image(hpBar, x, y);
  
  //set treasure position in random
  image(treasure, treasureX, treasureY);
  
  //set enemy image
  image(enemy, enemyX, enemyY);
  enemyX += 3;
  enemyX %= 640;

}

/*
question?
What's the difference between

  indexOne++;
  indexOne %= width*2;
  
and 

  indexOne = (indexOne + 1) % width*2;
  
*/
