class Pixel {

  float x, y, s;
  color c;

  Pixel() {
    x = random(width);
    y = random(height);
    c = get( int(x), (int)y );
    s = 1;
  }

  void show() {
    fill(c);
    rect(x, y, s, s);
  }

  void act() {
    s = dist(mouseX, mouseY, x, y)/10;
    if (s > 200) {
      s = 200; 
    }
  }
}
