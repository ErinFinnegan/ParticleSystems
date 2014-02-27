//based heavily on Nature of Code example 4_09_Additive Blending by Daniel Shiffman, natureofcode.com

//ParticleSystem ds;

PImage dogeimg;
PImage dogecoin;

void setup() {
  size(1000, 750, P2D);

  dogecoin = loadImage("dogecoin.png");
  dogeimg = loadImage("dogenowords2.jpg");
//  font = loadFont("ComicSansMS-Bold-40.vlw");

  //ps = new ParticleSystem(0, new PVector(width/2, 50));
}

void draw() {
  background(255);
  //  imageMode(CENTER);
  image(dogeimg, 0, 0);
  image(dogecoin, width/2, height/2);
  
}
