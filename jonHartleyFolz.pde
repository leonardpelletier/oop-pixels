PImage img;
ArrayList<Pixel> myPixels;

void setup() {
  fullScreen(FX2D);
  img = loadImage("jonHartleyFolz.jpg");
  img.resize(width, height);  
  image(img, 0, 0);
  rectMode(CENTER);
  
  noStroke();
  myPixels = new ArrayList<Pixel>();


  int i = 0;
  while (i < 100) {
    myPixels.add( new Pixel()); 
    i = i + 1;
  }
}

void draw() {
  image(img, 0, 0);
  
  int i = 0;
  while (i < 100) {
     Pixel p = myPixels.get(i);
     p.act();
     p.show();
     i = i + 1;
  }
}
