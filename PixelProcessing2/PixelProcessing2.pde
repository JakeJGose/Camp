PImage img;
void setup() {
  img = loadImage("howlingwolf.jpg");
  size(1920, 1080);
}
void draw() {
  image(img,0,0);
  filter(ERODE);
  filter(INVERT);
  filter(GRAY);
}
void keyPressed() {
  if(key == 'p' || key == 'P') {
    saveFrame("data/" + System.currentTimeMillis() + ".jpg");
  }
}
