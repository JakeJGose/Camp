PImage img;
PFont font;
void setup() {
  img = loadImage("rr_resized.jpg");
  size(img.width, img.height);
  image(img, 0, 0);
  font = loadFont("HarlowSolid-48.vlw");
  textFont(font, 100);
  textAlign(CENTER);
  text("The Gipper", width/2, height-100);
}

void draw() {
}

void keyPressed() {
  if(key == 'p') {
    saveFrame("data/" + System.currentTimeMillis() + ".jpg");
  }
}
