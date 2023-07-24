function setup() {
  createCanvas(300, 300);
  pixelDensity(1);
}

function draw() {
 background(0);
 loadPixels();

  pX = 0; //initial x and y pixels
  pY = 0;
  width = 300;
  height = 300;
  maxIter = 300;

  for (let y = 0; y < height; y++) { //400 rows of 400 pixels
    for (let x = 0; x < width; x++) { //400 pixels in row
      var index = (x+y * width) * 4;
      pixels[index+0] = 255;
      pixels[index+1] = 0;
      pixels[index+2] = 0;
      pixels[index+3] = 255;  
      updatePixels();    
        }
  }
 



}
