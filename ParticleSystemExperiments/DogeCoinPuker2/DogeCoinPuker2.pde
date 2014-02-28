//based heavily on Nature of Code example 4_09_Additive Blending by Daniel Shiffman, natureofcode.com

ParticleSystem ds;

PImage dogeimg;
PImage dogecoin;
PFont font;

ArrayList<ParticleSystem> systems;

void setup() {
  size(1000, 750, P2D);

  systems = new ArrayList<ParticleSystem>();

  dogecoin = loadImage("dogecoin.png");
  dogeimg = loadImage("dogenowords2.jpg");

  ds = new ParticleSystem(0, new PVector(0, 0));  //the second Pvector is where the location is set
  font = loadFont("ComicSansMS-Bold-40.vlw");
}

void draw() {

 // blendMode(ADD);
 //  background(75);


  for (ParticleSystem ds: systems) {
    ds.run();
    ds.addParticle();
  }

  image(dogeimg, 0, 0);

  pushMatrix();  //THE GOGGLES THEY DO NOTHING
  fill(0);
  textFont(font, 32);
  text("click mouse to add particle systems", 10, height-30);
  popMatrix();  //NOTHING!!!
}


void mousePressed() {
  systems.add(new ParticleSystem(1, new PVector(mouseX, mouseY)));
}

