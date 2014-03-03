//based heavily on Nature of Code example 4_09_Additive Blending by Daniel Shiffman, natureofcode.com

ParticleSystem ds;

PImage dogeimg;
PImage sparkle;
PImage dogecoin;
PFont font;

ArrayList<ParticleSystem> systems;

void setup() {
  size(1000, 750, P2D);

  systems = new ArrayList<ParticleSystem>();

  dogecoin = loadImage("dogecoin.png");
  dogeimg = loadImage("dogenowords2.jpg");
  sparkle = loadImage("sparkles.png");

  ds = new ParticleSystem(0, new PVector(0, 0));  //the second Pvector is where the location is set
  font = loadFont("ComicSansMS-Bold-40.vlw");
}

void draw() {

  // blendMode(ADD);  //Other modes SUBTRACT, LIGHTEST, DARKEST, DIFFERENCE, EXCLUSION,or MULTIPLY.
  //background(255);


  for (ParticleSystem ds: systems) {
    ds.run();
    ds.addParticle();
  }
  imageMode(CENTER);
  image(dogeimg, width/2, height/2);

//  pushMatrix();  //THE GOGGLES THEY DO NOTHING
  fill(0);
  textFont(font, 32);
  text("click mouse to add particle systems", 10, height-30);
//  popMatrix();  //NOTHING!!!
}


void mousePressed() {
  systems.add(new ParticleSystem(1, new PVector(mouseX, mouseY)));
}

