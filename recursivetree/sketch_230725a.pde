import controlP5.*;

float lineLength = 200;
float angle = 3.14/8;

ControlP5 control;

void setup() {
 size(1500,1500);
 addSliders();
}

void draw() {
  pushMatrix();
  scale(1.27);
  background(51); 
  strokeWeight(5);
  stroke(153);
  translate(500,800);
  branch(lineLength);
  popMatrix();
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

void addSliders() {
 control = new ControlP5(this); 
 control.addSlider("angle",0,3.14,30,1100,300,300,50).setBroadcast(false)
 .setValue(angle)
 .setSliderMode(Slider.FLEXIBLE).setBroadcast(true);

  
  control.addSlider("lineLength",0,400,200,1100,400,300,50).setBroadcast(false)
 .setValue(lineLength)
 .setSliderMode(Slider.FLEXIBLE).setBroadcast(true);
 


  
}


  
  
  
  
  
  
