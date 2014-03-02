//based heavily on Nature of Code example 4_09_Additive Blending by Daniel Shiffman, natureofcode.com

class Particle {
  PVector loc;
  PVector vel;
  PVector acc;
  float lifespan;

  Particle(PVector l) {
    // Boring example with constant acceleration  //I don't think it's boring
    acc = new PVector(0, 0.05, 0);
    vel = new PVector(random(-1, 1), random(-1, 0), 0);
    vel.mult(2);
    loc = l.get();
    lifespan = 60;  //under 50 is too low, 255 is kinda too high
  }

  void run() {
    update();
    render();
  }

  // Method to update location
  void update() {
    vel.add(acc);
    loc.add(vel);
    lifespan -= 0.01;  //0.5 is really long, higher numbers are shorter
  }

  // Method to display
  void render() {
    imageMode(CENTER);
    tint(255, 255, 255, lifespan); 
    //tint(255, lifespan); 
    //tint(lifespan);
    image(dogecoin, loc.x, loc.y);
  }

  // Is the particle still useful?
  boolean isDead() {
    if (lifespan <= 0.0) {
      return true;
    } 
    else {
      return false;
    }
  }
}

