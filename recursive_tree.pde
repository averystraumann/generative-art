float angle = 3.14/4;
int len = 250;

void setup() {
  size(1000,1000);
  pixelDensity(1);
}

void draw() {
 background(51); 


  strokeWeight(5);
  stroke(153);
  translate(500,800);
  branch(len);
}


public void branch(float len) {
    line(0,0,0,-len);
    translate(0,-len);
    
    if (len > 4) {
      push();
      
      rotate(angle);
      branch(len*.67);
      pop();
      push();
      rotate(-angle);
      branch(len*.67);
      pop();
    }
    else {
    return;
   }
  
}
