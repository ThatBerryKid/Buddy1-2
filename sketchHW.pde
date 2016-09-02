Eye e1, e2;

void setup(){
background (0,204,0);  
size(500,500);
noStroke();
e1 = new Eye ( 120,120,200 );
e2 = new Eye ( 380,120,200 );
}

void draw(){

  e1.update(mouseX, mouseY);
  e2.update(mouseX, mouseY);

  e1.display();
  e2.display();
}

class Eye {
 int x,y;
 int size;
 float angle = 0.0;
 
 Eye (int tx, int ty, int ts) {
  x=tx;
  y=ty;
  size=ts;
 }

void update(int mx, int my){
  angle = atan2(my-y,mx-x);
}

void display(){
pushMatrix();
translate(x,y);
if (mousePressed == true) {
  fill(0,204,0);
  ellipse(0,0,size,size);
  ellipse(0,0,size,size);
  fill(255);
  rect(-100,0,200,20);
}else{
 fill(0,204,0);
 ellipse(0,0,size+60,size+60);
fill(255,255,255);
ellipse(0,0,size,size);
rotate(angle);
fill(51,153,255);
ellipse(size/4,0,size/2,size/2);
}
popMatrix();

fill(255,255,255);
rect(260,150,20,200);
rect(220,330,40,20);
rect(150,400,mouseY,20);
rect(150,400,50,20);
fill(0,204,0);
rect(500,400,-mouseY/2,20);
rect(50,400,mouseY/2.5,20);
}
}