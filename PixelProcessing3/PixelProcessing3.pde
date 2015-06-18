PImage forest;
PImage glasses;
void setup() {
  forest = loadImage("Forest.jpg");
  size(600, 400);
  PImage glasses = loadImage("Glasses.jpg");

}

void draw() {
  background(forest);
  image(forest,0,0);
}
