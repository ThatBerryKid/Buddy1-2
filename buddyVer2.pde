/**
 * Multiple Nested PApplets (v2.0)
 * by GoToLoop (2015/May/21)
 *
 * forum.processing.org/two/discussion/10937/multiple-sketches
 * forum.processing.org/two/discussion/7036/multiple-screens
 */
import java.awt.MouseInfo;
Eye e1, e2;
 
// Main PApplet Sketch:
static final int FPS = 60, TOGGLE = 5*FPS; // 5 seconds
 
final PApplet miss = new miss(), bouncy = new Bouncy();
 
void setup() {
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
  
  int ex = MouseInfo.getPointerInfo().getLocation().x;
  int why = MouseInfo.getPointerInfo().getLocation().y;
  background(0, 204, 0);
  fill(0,204,0);
 rect(0,0,500,500);
 //Mouth
 fill(255,255,255);
 rect(150,400,why/2,20);
 rect(150,400,50,20);
 fill(0,204,0);
 rect(500,400,-why/5,20);
 rect(50,400,why/10,20);
 
 //Nose
 fill(255,255,255);
rect(260,150,20,200);
rect(220,330,40,20);

  //Eyes
  
  e1.update(ex, why);
  e2.update(ex, why);

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
public static final class miss extends PApplet {
  void setup() {
 
    
  }
  public void settings(){
    size(500,500,"processing.awt.PGraphicsJava2D");
    smooth(4);
  }
 
  void draw() {
    background(200, 255, 200);
  
  }
}
 //END OF NESTED SKETCH
 
 
 
// Nested PApplet Class B:
public static final class Bouncy extends PApplet {
  
  void setup() {
 
  }
 public void settings(){
    size(500,500,"processing.awt.PGraphicsJava2D");
    smooth(4);
  }
 
  void draw() {
 
  }
 
}

//END OF NESTED SKETCH