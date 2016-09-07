//Coded and Arranged By JW.Berry
//Code Used from:
/* 
https://processing.org/examples/arctangent.html
https://forum.processing.org/one/topic/counting-mouse-clicks.html
*/


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
noStroke();
 color from = color(0,204,0);
 color to = color(225,0,0);
 color step1 = lerpColor(from, to, .45);
 color step2 = lerpColor(from, to, .60);
 color step3 = lerpColor(from, to, .75);
 color step4 = lerpColor(from, to, .88);
 color step5 = lerpColor(from, to, .95);
 
 //Step 6
 if (mouseClicks >= 6){
 fill(to);
 rect(0,0,500,500);
 //Brows
 pushMatrix();
 translate(width/2, height/2);
 rotate(PI/1.5);
 stroke(255);
 fill(to);
 rect(-330,55,180,24);
 popMatrix();
 
 pushMatrix();
 translate(width/2, height/2);
 rotate(PI/3);
 stroke(255);
 fill(to);
 rect(-330,-79,180,24);
 popMatrix();

 //Mouth
 noStroke();
 pushMatrix();
 translate(width/2, height/2);
 rotate(PI/3.6);
 fill(255,255,255);
 rect(60,120,150,20);
 popMatrix();
 rect(176,373,20,120);
 
 }
 
 //Step 5
 if (mouseClicks == 5){
 fill(step5);
 rect(0,0,500,500);
 //Brows
 stroke(255);
 fill(step5);
 rect(20,-2,180,20);
 rect(280,-2,180,20);
 //Mouth
 noStroke();
 pushMatrix();
 translate(width/2, height/2);
 rotate(PI/3.6);
 fill(255,255,255);
 rect(60,120,150,20);
 fill(step5);
 rect(350,118,-mouseY/3,25);
 rect(-20,118,mouseY/3,25);
 popMatrix();
 
 }
 
 //Step 4
 if (mouseClicks == 4) {
 fill(step4);
 rect(0,0,500,500);
 //Brows
 stroke(255);
 fill(step4);
 rect(20,-5,180,20);
 rect(280,-5,180,20);
 //Mouth
 noStroke();
 pushMatrix();
 translate(width/2, height/2);
 rotate(PI/3.6);
 fill(255,255,255);
 rect(60,120,150,20);
 fill(step4);
 rect(350,118,-mouseY/3,25);
 rect(-20,118,mouseY/3,25);
 popMatrix();
 }
 
 //Step 3
 if (mouseClicks == 3) {
 fill(step3);
 rect(0,0,500,500);
 //Mouth
 pushMatrix();
 translate(width/2, height/2);
 rotate(PI/3.6);
 fill(255,255,255);
 rect(60,120,150,20);
 fill(step3);
 rect(350,118,-mouseY/3,25);
 rect(-20,118,mouseY/3,25);
 popMatrix();
 }
 
 
 //Step 2
 if (mouseClicks == 2) {
 fill(step2);
 rect(0,0,500,500);
 //Mouth
 fill(255,255,255);
 rect(150,400,mouseY,20);
 rect(150,400,50,20);
 fill(step2);
 rect(500,400,-mouseY/2,20);
 rect(50,400,mouseY/2.5,20);

 }
 
 //Step 1
 if (mouseClicks == 1) {
 fill(step1);
 rect(0,0,500,500);
 //Mouth
 fill(255,255,255);
 rect(150,400,mouseY,20);
 rect(150,400,50,20);
 fill(step1);
 rect(500,400,-mouseY/2,20);
 rect(50,400,mouseY/2.5,20);

 }
 
 
 //Step 0
 if (mouseClicks == 0) {
 fill(from);
 rect(0,0,500,500);
 //Mouth
 fill(255,255,255);
 rect(150,400,mouseY,20);
 rect(150,400,50,20);
 fill(from);
 rect(500,400,-mouseY/2,20);
 rect(50,400,mouseY/2.5,20);
 }
  //nega Step
  if (mouseClicks < 0 && mouseClicks > -6) {
 fill(from);
 rect(0,0,500,500);
 //Mouth
 fill(255,255,255);
 rect(150,400,200,20);
 rect(150,400,20,-30);
 fill(from);
 rect(500,400,-mouseY/2,20);
 }
   //nega Step2
  if (mouseClicks <= -6) {
 fill(95,224,255);
 rect(0,0,500,500);
 //Mouth
 fill(255,255,255);
 rect(150,400,200,20);
 rect(150,400,20,-50);
 rect(330,400,20,-50);
  }
 
 
 //Nose
fill(255,255,255);
rect(260,150,20,200);
rect(220,330,40,20);


//Eyes
  e1.update(mouseX, mouseY);
  e2.update(mouseX, mouseY);

  e1.display();
  e2.display();
  

  
//End of Void Draw, ALWAYS LOSING IT
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
if (mouseClicks >5){
  fill(205,4,0);
ellipse(size/4,0,size/2,size/2);
}else{
fill(51,153,255);
ellipse(size/4,0,size/2,size/2);
}
}
popMatrix();

}
}
void mousePressed (){
 if (mouseButton == LEFT) {mouseClicks++;} else { mouseClicks --; } 
}
