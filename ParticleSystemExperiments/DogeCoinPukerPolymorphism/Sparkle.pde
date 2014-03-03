//based heavily on Nature of Code example 4_05_Additive Blending by Daniel Shiffman, natureofcode.com


class Sparkle extends Particle {

  // We could add variables for only Confetti here if we so

  Sparkle(PVector l) {
    super(l);
  }

  // Inherits update() from parent

  // Override the display method
  void render() {
    imageMode(CENTER);
    tint(255, 255, 255, lifespan); 
    //tint(255, lifespan); 
    //tint(lifespan);

   image(sparkle, loc.x, loc.y);
  
  }
}

