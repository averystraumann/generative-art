
//final int N = 64;
final int w = 5;

final int iter = 100; 
//final int[] xy = {0,0} ; //x and y are starting coords
//final float[] ab = {0.5,0.5}; //a and b are components of a complex constant
final int bound = 100;

  int index(int x, int y) {
    //get 2D location from 1D array    
    return x + y * width;
  }

  int iterate(float[] ab, float[] xy) { //calculates f(x,y) = (x^2 - y^2 + a, 2xy + b)
    float a = ab[0];
    float b = ab[1];
    float x = xy[0];
    float y = xy[1];
    int count = 0;    
    for (int i = 0; i < iter; i++) {
     float x1 = (x*x) - (y*y) + a;
      y = 2 * x * y + b;
      x = x1;      
      if (x*x + y*y > bound) {
        return count;
      } 
      count++;
    }
    return count;
  }
  
  float[] pixel2Complex(int col, int row) { //convert pixel address to complex plane address
    float x = (float) col/ (float) width * 5;
    x -= (float) 2.5;
    float y = (float) row/ (float) height * 2.5;
    y-=1.25; //prob wrong
    return new float[] {y,x}; 
  } 
  
  
  void drawJuliaSet(float[] ab) { //<>//
    loadPixels();
    for (int j = 0; j < height; j++) { //j = row
      for (int i = 0; i< width; i++) { //i = col
        float[] start = pixel2Complex(i,j); //get starting pt for iter for each pt on canvas
        int count = iterate(ab, start); //iter using constants ab and computed starting pt
        color c = computeColor(count);
        pixels[index(i,j)] = c;
      }   
    }
    updatePixels();
   }
   
   
  color computeColor(int count) {
    if (count == iter) { //in julia set
      return color(0,0,0); 
    }    
    else{
     float hue = (count%90)/100.0f;
     return color(hue,255,255);
    }
  }
    
    
 
  
  
  
  
  
