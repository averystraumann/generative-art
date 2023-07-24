void setup() {
  size(300,300);

}

void draw() {
   pixelDensity(1);
   loadPixels();
   color pink = color(255,102,204);
   for (int x = 0; x < width*height; x++) {
     pixels[x] = pink;
   }
   updatePixels();

}
