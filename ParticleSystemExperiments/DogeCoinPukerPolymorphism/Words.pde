//based heavily on Nature of Code example 4_05_Additive Blending by Daniel Shiffman, natureofcode.com


class Words extends Particle {





  Words(PVector l) {
    super(l);
  }

  // Inherits update() from parent

  void render() {
    tint(255, 255, 255, lifespan); 
    fill(rgb);
    text((words[index]), loc.x, loc.y);
    //    image(sparkle, loc.x, loc.y);
  }
}

