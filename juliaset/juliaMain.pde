void settings() {
 size(2048,1024);
}


void draw() {
  colorMode(HSB,1);
  noLoop();
  background(0);
  pixelDensity(1);
  drawJuliaSet(new float[] {.285,.01});
}
