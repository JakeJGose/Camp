
PImage foreground;
PImage background;

void setup() {
  foreground = loadImage("treegreen.jpg");
  background = loadImage("desert.JPG");
  GreenScreen gs = new GreenScreen(foreground, background);
  matchWidth(foreground, background);
  gs.display();
}

void draw() {
} //required for keyPressed event to fire
void keyPressed() {
  if (key == 'p' || key == 'P') {
    saveFrame("data/" + System.currentTimeMillis() + ".jpg");
  }
}

void matchWidth(PImage foreground, PImage background) {
  int w;
  if (foreground.width > background.width) {
    w = background.width;
    foreground.resize(w, 0);
  } else {
    w = foreground.width;
    background.resize(w, 0);
  }
}

