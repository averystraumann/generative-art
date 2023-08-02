final int iter = 512;
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
  
  float[] pixel2Complex(int col, int row, float l, float r, float b, float t) { //convert pixel address to complex plane address
    float x = (float) col/ (float) width  * (float) (r-l);
    x += (float) l;
    float y = (float) row/ (float) height * (float) (t-b);
    y += (float) b; //prob wrong
    return new float[] {x,y}; 
  } 
  
  
  void drawMandelbrotSet() {
    loadPixels();
    for (int j = 0; j < height; j++) { //j = row
      for (int i = 0; i< width; i++) { //i = col
        float[] ab = pixel2Complex(i,j,-1.019741354 ,-1.013877846  ,-0.325120847, -0.322189093 ); //get starting pt for iter for each pt on canvas
        int count = iterate(ab, new float[] {0,0}); //iter using constants ab and computed starting pt
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
    
    
 
  
  
  
  
  
