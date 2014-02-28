//based heavily on Nature of Code example 4_09_Additive Blending by Daniel Shiffman, natureofcode.com

ParticleSystem ds;

PImage dogeimg;
PImage dogecoin;


void setup() {
  size(1000, 750, P2D);

  dogecoin = loadImage("dogecoin.png");
  dogeimg = loadImage("dogenowords2.jpg");
  //  font = loadFont("ComicSansMS-Bold-40.vlw");
  ds = new ParticleSystem(0, new PVector(0, 0));  //the second Pvector is where the location is set
}

void draw() {

  blendMode(MULTIPLY);
  //background(255);
  //pushMatrix();  //THE GOGGLES THEY DO NOTHING
  image(dogeimg, width/2, height/2);
  //popMatrix();  //NOTHING!!!


  ds.run();
  for (int i = 0; i < 2; i++) {
    ds.addParticle();
  }
}

void mouseClicked() {
  ds = new ParticleSystem(0, new PVector(mouseX, mouseY));  //the second Pvector is where the location is set
}

