float xLim =0;
float yLim =0;
float red =0;
float green =0;
float blue =0;

void setup(){
  size(1000,1000);
  background(0);
  
  fill(205);
  rect(width-width/3, 0, width/1, height); 
    
}

void draw(){
 
  for (int boxX = 0; boxX<xLim; boxX= boxX + 20){
      for (int boxY = 0; boxY<yLim; boxY= boxY + 20){
     fill (color(random(red),random(green),random(blue)));
     rect(boxX,boxY,20,20);
      } 
  }
  if (mousePressed){
    mousePressed();
  }
  if (xLim >width){
  xLim *=-1;
  }
  
}
  
  


void mousePressed(){

if(mouseButton == LEFT){
  xLim = xLim +2;
  yLim = yLim +2;
}else{
  xLim  =0;
  yLim  =0;
}
}
