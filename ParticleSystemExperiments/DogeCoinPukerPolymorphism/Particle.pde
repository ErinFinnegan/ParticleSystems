//based heavily on Nature of Code example 4_09_Additive Blending by Daniel Shiffman, natureofcode.com

class Particle {
  PVector loc;
  PVector vel;
  PVector acc;
  float lifespan;

  String[] words = { 
    "wow", "much processing", "very Java", "much codee", "very scare", "PVectro", "much force", "frictoin", 
    "wow", "very Newton", "much law",
  };

  int index = int(random(words.length)); 

  color[] ArrayOfColors = { 
    color(181, 230, 29), color(63, 72, 204), color(255, 174, 201), color(0, 162, 232), color(255, 127, 39), color(255, 242, 0), color(136, 0, 21), color(212, 176, 190), color(207, 209, 100), color(200, 120, 87)
  };
  color rgb = (ArrayOfColors[(int) random(ArrayOfColors.length)]);  //add psychedelic color spray


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

