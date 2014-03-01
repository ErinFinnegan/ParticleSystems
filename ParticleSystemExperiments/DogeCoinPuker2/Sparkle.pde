//based heavily on Nature of Code example 4_05_Additive Blending by Daniel Shiffman, natureofcode.com


class Sparkle extends Particle {

  // We could add variables for only Confetti here if we so

  Sparkle(PVector l) {
    super(l);
  }

  // Inherits update() from parent

  // Override the display method
  void display() {
    rectMode(CENTER);
    fill(127,lifespan);
    stroke(0,lifespan);
    strokeWeight(2);
    pushMatrix();
    translate(loc.x,loc.y);
    float theta = map(loc.x,0,width,0,TWO_PI*2);
    rotate(theta);
    rect(0,0,12,12);
    popMatrix();
  }
}

