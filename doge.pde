void setup() {
  size(1000, 1000);
  smooth();
  background(0);
}

void draw() {
  //Ellipse that follows our mouse

  if (mousePressed) {  
    fill(random(205), random(5), random(0));
    ellipse(mouseX, mouseY, 30, 30);
  }
    
  }