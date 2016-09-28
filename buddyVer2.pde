/**
  Buddy Ver2
  By James W. Berry
  Remixed code from:
 * Multiple Nested PApplets (v2.0)
 * by GoToLoop (2015/May/21)
 *
 * forum.processing.org/two/discussion/10937/multiple-sketches
 * forum.processing.org/two/discussion/7036/multiple-screens
 */
float click;
int time;
float nudge;
import java.awt.MouseInfo;
Eye e1, e2;
// Main PApplet Sketch:
static final int FPS = 60, TOGGLE = 5*FPS; // 5 seconds
 
final PApplet miss = new miss(), bouncy = new Bouncy();
 
void setup() {
  time = 0;
  nudge = .05;
  frameRate(FPS);
  // Instantiating All Nested PApplet Sketches:
  String[] sketches = getSketchNestedClassNames();
  
  //for (String sketch : sketches)  main(sketch);
  printArray(sketches);
  
  //runSketch(new String[] { ARGS_FULL_SCREEN, "Full Window" }, another);
  runSketch(new String[] { "GirlFriend" }, miss);
  runSketch(new String[] { "Baby" }, bouncy);
  
  noStroke();
  //Buddy's Pupils
  e1 = new Eye ( 120,120,200 );
  e2 = new Eye ( 380,120,200 );


}
 
void draw() {
  println(click);
  int ex = MouseInfo.getPointerInfo().getLocation().x;
  int why = MouseInfo.getPointerInfo().getLocation().y;
  background(0, 204, 0);
  fill(0,204,0);
 rect(0,0,500,500);
 //Mouth
 fill(255,255,255);
 rect(150,400,why,20);
 rect(150,400,50,20);
 fill(0,204,0);
 rect(500,400,-why/2,20);
 rect(50,400,why/2.5,20);
 

  if (click >=2){
    fill(137,66,0);
 rect(0,0,500,500);
  
 //Mouth
 noStroke();
 pushMatrix();
 translate(width/2, height/2);
 rotate(PI/3.6);
 fill(255,255,255);
 rect(60,120,150,20);
 fill(137,66,0);
 rect(350,118,-mouseY/3,25);
 rect(-20,118,mouseY/3,25);
 popMatrix();
}

 //Nose
 fill(255,255,255);
rect(260,150,20,200);
rect(220,330,40,20);

 //Eyes
  
  e1.update(ex, why);
  e2.update(ex, why);
  pushMatrix();
  e1.display();
  e2.display();
  popMatrix();
  
  if (click >=2){
 //Brows
 stroke(255);
 fill(137,66,0);
         if (time<=220){
         rect(20,nudge += .05,180,25);
         rect(280,nudge +=.05,180,25);
         time++;
         }else if(time ==221){
         rect(20,10.95,180,25);
         rect(280,10.95,180,25);
         }
  }
 println(time); 
}

            // CLASSES GOTTA BE DECLARED
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
                fill(51,153,255);
                ellipse(size/4,0,size/2,size/2);  
                }
              popMatrix();
              } 
            }
            
            
            
            
            
           
            //END OF CLASSES




public void settings(){
    size(500,500,"processing.awt.PGraphicsJava2D");
    smooth(4);
  }
 
void keyPressed() {
  int k = keyCode;
  if (k == DOWN)              activateSketch(miss);
  else if (k == UP)             disableSketch(miss);
  else if (k == RIGHT)        activateSketch(bouncy);
  else if (k == LEFT)           disableSketch(bouncy);

}
 //END OF MAIN SKETCH, BUD
 
 
 
 
// Util Functions for Hiding/Displaying/Toggling Sketches:
static final void disableSketch(PApplet p) {
  p.noLoop();
}
 
static final void activateSketch(PApplet p) {
  p.loop();
}
 
 
 
 
// Util Functions for Nested PApplet Sketches:
static final String getSketchClassName() {
  return Thread.currentThread().getStackTrace()[1].getClassName();
}
 
static final String[] getSketchNestedClassNames() {
  Class[] nested;
 
  try {
    nested = Class.forName(getSketchClassName()).getClasses();
  }
  catch (ClassNotFoundException cause) {
    throw new RuntimeException(cause);
  }
 
  int idx = 0, len = max(0, nested.length - 2);
  String[] classes = new String[len];
 
  while (idx != len)  classes[idx] = nested[idx++].getName();
  return classes;
}

 
 
 
 
// Nested PApplet Class A:
int t;
public  class miss extends PApplet {
  void setup() {
     t = 501;
noStroke();
  }
  public void settings(){
    size(500,500,"processing.awt.PGraphicsJava2D");
    smooth(4);
  }
 
  void draw() {
      float angle = atan2(mouseY-120, mouseX-120);
  float angle2 = atan2(mouseY-120, mouseX-380);

  noStroke();
  //Step 0
 fill(229,160,211);
 rect(0,0,500,500);
 

 
 //Mouth
 fill(205,5,0);
 rect(150,400,mouseY,20);
 rect(150,400,220,20);
 rect(370,420,20,-50);
 
 fill(229,160,211);
 rect(500,400,-mouseY/2,20);
 rect(50,400,mouseY/2.5,20);
 rect(370,290,20,mouseY/2);
 
 //Eyes
 
                if (mousePressed == true) {
                fill(205,5,0);
                ellipse(120,170,200,200);
                fill(255);
                ellipse(120,180,200,200);
                fill(229,160,211);
                ellipse(120,200,200,200);
                
                
                fill(205,5,0);
                ellipse(380,170,200,200);
                fill(255);
                ellipse(380,180,200,200);
                fill(229,160,211);
                ellipse(380,200,200,200);
                
                }else{
                
                pushMatrix();
                translate(120,120);
                fill(255,255,255);
                ellipse(0,0,200,200);
                
                rotate(angle);
                fill(112,160,144);
                ellipse(angle+48,0,100,100);
                popMatrix();
                
                
                pushMatrix();
                translate(380,120);
                fill(255,255,255);
                ellipse(0,0,200,200);
                rotate(angle2);
                fill(112,160,144);
                ellipse(angle+48,0,100,100);
                popMatrix();
                }
  
  //Hair
 if (t<250){
   
 fill(142,2,0);
 ellipse(width+25,100,180,180);
   for(int i=0; i<=width; i+=100){
     fill(205,5,0);
     float space = random(0, 5);
     ellipse(i+50,space-10,150,150);
     ellipse(i,space-10,100,110);
   }
   t++;
 }else{
       
     fill(142,2,0);
     ellipse(width+25,100,180,180);
       for(int i=0; i<=width; i+=100){
         fill(205,5,0);
         ellipse(i+50,-10,150,150);
         ellipse(i,-10,100,110);
      }
 }
 
 
 if ((mousePressed == true) &&(mouseY <= 189)){
  fill(205,5,0,50);
   ellipse(110,330,150,150);
   ellipse(400,330,150,150);
   t=0;
   click +=.01;
 }
 
 
 //Nose
fill(255,255,255);
rect(290,200,20,60);
rect(210,200,80,20);
rect(210,200,20,60);


 
 }
}

            

 //END OF NESTED SKETCH A
 
 
 
// Nested PApplet Class B:
public static final class Bouncy extends PApplet {
  
  void setup() {
 noStroke();
  }
 public void settings(){
    size(500,500,"processing.awt.PGraphicsJava2D");
    smooth(4);
  }
 
  void draw() {
 
      float angle = atan2(mouseY-120, mouseX-120);
      float angle2 = atan2(mouseY-120, mouseX-380);

  }
 
}

//END OF NESTED SKETCH B
