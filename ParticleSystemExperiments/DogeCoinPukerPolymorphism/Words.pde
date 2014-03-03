//based heavily on Nature of Code example 4_05_Additive Blending by Daniel Shiffman, natureofcode.com


class Words extends Particle {

  color[] ArrayOfColors = { 
    color(181, 230, 29), color(63, 72, 204), color(255, 174, 201), color(0, 162, 232), color(255, 127, 39), color(255, 242, 0), color(136, 0, 21), color(212, 176, 190), color(207, 209, 100), color(200, 120, 87)
  };
  String[] words = { 
    "wow", "much processing", "very Java", "much codee", "very scare", "PVectro", "much force", "frictoin", 
    "wow", "very Newton", "much law",
  };
  int index = int(random(words.length)); 
  color rgb;




  Words(PVector l) {
    super(l);
  }

  // Inherits update() from parent

  void render() {
    rgb = (ArrayOfColors[(int) random(ArrayOfColors.length)]);
    tint(255, 255, 255, lifespan); 
    fill(rgb);
    text((words[index]), loc.x, loc.y);
    //    image(sparkle, loc.x, loc.y);
  }
}

