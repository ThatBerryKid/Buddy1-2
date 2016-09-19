float xLim =0;
float yLim =0;
float red;
float green;
float blue;
int mouseCount = 0;
char output;
PImage button,jwb;

void setup(){
  size(1000,1000);
 jwb = loadImage("jwberry_fused_small.png");
  background(255);
  button = loadImage("set.png");
  
  //ColorPicker
  fill(200);
  rect(width-width/3, 0, width/1, height); 
  
  stroke(0);
  fill(205,4,0);
  rect(width-width/3+120,120,100,100);
  
  fill(6,153,0);
  rect(width-width/3+120,270,100,100);
  
  fill(0,6,153);
  rect(width-width/3+120,420,100,100);

  fill(255,255,255);
  rect(width-width/3+120,570,100,100);

  image(button, width-width/3+120, 0);
}

void draw(){
  
  if ((xLim <= 0) || (yLim <= 0)){
   xLim = 0;
   yLim = 0;
  }
  
  char letter = output;
  
  if ((mousePressed == true) && (mouseX<=width-width/3) &&(mouseX>=0) &&(mouseY>=0) &&(mouseY<=height)){
   red =255;
   green =255;
   blue =255;
  output = 'a';
  }
  
  if((mousePressed ==true) && (mouseX >=width-width/3+120) && (mouseX <=width-width/3+220) && (mouseY>=0) && (mouseY<=100)){
  xLim= 0;
  yLim= 0;
  }
    
  if ((mousePressed ==true) && (mouseX >=width-width/3+120) && (mouseX <=width-width/3+220) && (mouseY>=120) && (mouseY<=220)){ 
   red =205;
   green =5;
   blue =0;
   output = 'b';
  }
  
  if ((mousePressed ==true) && (mouseX >=width-width/3+120) && (mouseX <=width-width/3+220) && (mouseY>=270) && (mouseY<=370)){ 
   red =6;
   green =153;
   blue =0;
   output = 'c';
  }
  
  if ((mousePressed ==true) && (mouseX >=width-width/3+120) && (mouseX <=width-width/3+220) && (mouseY>=420) && (mouseY<=520)){ 
   red =0;
   green =6;
   blue =153;
   output = 'd';  
  }
  if ((mousePressed ==true) && (mouseX >=width-width/3+120) && (mouseX <=width-width/3+220) && (mouseY>=570) && (mouseY<=670)){ 
   red =255;
   green =0;
   blue =0;
   output = 'e';  
  }
  
  
  switch(letter) {
   case 'a':
 
     for (int boxX = 0; boxX<xLim; boxX= boxX + 20){
       for (int boxY = 0; boxY<yLim; boxY= boxY + 20){
         fill (color(random(red),random(green),random(blue)));
         rect(boxX,boxY,20,20);
       } 
     }
      if (mousePressed){
        if(mouseButton == LEFT){
          xLim = xLim +4;
          yLim = yLim +4;
        }else {
           xLim = xLim -4;
          yLim = yLim -4;
        }
      }
      
      if (xLim >width-width/3){
      xLim =(width-width/3);
      }

   break;

    case 'b':
      for (int boxX = 0; boxX<xLim; boxX= boxX + 20){
         for (int boxY = 0; boxY<yLim; boxY= boxY + 20){
           fill(red,green,blue);
           rect(boxX,boxY,20,20);
         } 
       }
        if (mousePressed){
          if(mouseButton == LEFT){
            xLim = xLim +4;
            yLim = yLim +4;
          }else{
            for (int boxX = 0; boxX<xLim; boxX= boxX + 20){
         for (int boxY = 0; boxY<yLim; boxY= boxY + 20){
           fill(random(red),random(green),random(blue));
           rect(boxX,boxY,20,20);
         } 
       }
            xLim = xLim -4;
            yLim = yLim +4;
          }    
        }
      if (xLim >width-width/3){
      xLim =(width-width/3);
      }
    break;
  
    case 'c':
      for (int boxX = 0; boxX<xLim; boxX= boxX + 20){
         for (int boxY = 0; boxY<yLim; boxY= boxY + 20){
           fill(red,green,blue);
           rect(boxX,boxY,20,20);
         } 
       }
    if (mousePressed){
          if(mouseButton == LEFT){
            xLim = xLim +4;
            yLim = yLim +4;
          }else{
            
            for (int boxX = 0; boxX<xLim; boxX= boxX + 20){
         for (int boxY = 0; boxY<yLim; boxY= boxY + 20){
           fill(random(red),random(green),random(blue));
           rect(boxX,boxY,20,20);
         } 
       }
            xLim = xLim -4;
            yLim = yLim -4;
          }
    }
    if (xLim >width-width/3){
      xLim =(width-width/3);
    }
  break;
  
  case 'd':
      for (int boxX = 0; boxX<xLim; boxX= boxX + 20){
       for (int boxY = 0; boxY<yLim; boxY= boxY + 20){
         fill(red,green,blue);
         rect(boxX,boxY,20,20);
       } 
     }
      if (mousePressed){
          if(mouseButton == LEFT){
            xLim = xLim +4;
            yLim = yLim +4;
          }else{
            for (int boxX = 0; boxX<xLim; boxX= boxX + 20){
         for (int boxY = 0; boxY<yLim; boxY= boxY + 20){
           fill(random(red),random(green),random(blue));
           rect(boxX,boxY,20,20);
         } 
       }
       xLim = xLim + 4;
       yLim = yLim - 4;
     }
      }
     
  if (xLim >width-width/3){
    xLim =(width-width/3);
  }  
  break;
  
  case 'e':
     for (int boxX = 0; boxX<xLim; boxX= boxX + 20){
       for (int boxY = 0; boxY<yLim; boxY= boxY + 20){
         fill (red);
         rect(boxX,boxY,20,20);
       } 
     }
     
      if (mousePressed){
        if(mouseButton == LEFT){
          xLim = xLim +4;
          yLim = yLim +4;
        }else {
          for (int boxX = 0; boxX<xLim; boxX= boxX + 20){
       for (int boxY = 0; boxY<yLim; boxY= boxY + 20){
         fill (color(random(red)));
         rect(boxX,boxY,20,20);
       } 
     }
     
           xLim = xLim -4;
          yLim = yLim -4;
        }
      }
      
      if (xLim >width-width/3){
      xLim =(width-width/3);
      }

   break;
  
  

}
  
  println(xLim, " ", yLim, " ", red, " ", green, " ", blue);
  
  
   image(jwb, width - 300, height - 116);
}
  
  
  
  
  
  


void mousePressed(){
if(mouseButton == LEFT){
}

}
