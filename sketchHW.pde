Eye e1, e2;
int mouseClicks;


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
 noStroke();
 color from = color(0,204,0);
 color to = color(225,0,0);
 color step1 = lerpColor(from, to, .44);
 color step2 = lerpColor(from, to, .66);
 color step3 = lerpColor(from, to, .88);
 color step4 = lerpColor(from, to, .90);
 color step5 = lerpColor(from, to, .99);
 
 //Step 5
 if (mouseClicks >= 5){
 fill(step5);
 rect(0,0,500,500);
 }
 
 //Step 4
 if (mouseClicks == 4) {
 fill(step4);
 rect(0,0,500,500);
 }
 
 //Step 3
 if (mouseClicks == 3) {
 fill(step3);
 rect(0,0,500,500);
 }
 
 
 //Step 2
 if (mouseClicks == 2) {
 fill(step2);
 rect(0,0,500,500);
 }
 
 //Step 1
 if (mouseClicks == 1) {
 fill(step1);
 rect(0,0,500,500);
 }
 
 
 //Step 0
 if (mouseClicks == 0) {
 fill(from);
 rect(0,0,500,500);
 }
  
//Eyes
pushMatrix();
translate(x,y);
if (mousePressed == true) {
  fill(255);
  rect(-100,0,200,20);
}else{
fill(255,255,255);
ellipse(0,0,size,size);
rotate(angle);
fill(51,153,255);
ellipse(size/4,0,size/2,size/2);
}
popMatrix();
//Nose
fill(255,255,255);
rect(260,150,20,200);
rect(220,330,40,20);

//Mouth
rect(150,400,mouseY,20);
rect(150,400,50,20);
fill(0,204,0);
rect(500,400,-mouseY/2,20);
rect(50,400,mouseY/2.5,20);
}
}

void mousePressed (){
 if (mouseButton == LEFT) {mouseClicks++;} else { mouseClicks = 0; } 
}
