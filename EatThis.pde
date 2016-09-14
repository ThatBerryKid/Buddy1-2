float xP = 750;
float xS = 7;
PImage photo, photo2, photo3, photo4, pizzafin, mouse, logo, jwb;
color BGCol = color(221,243,250);
int mouseCount;
char output;


void setup(){
 size(1500,1000);
 photo = loadImage("pizza1_big.png");
 photo2 = loadImage("pizza1.png");
 photo3 = loadImage("pizza2.png");
 photo4 = loadImage("pizza3.png");
 pizzafin = loadImage("pizzafin.png");
 mouse = loadImage("click_pizza.png");
 logo = loadImage("logo.png");
 jwb = loadImage("jwberry_fused_small.png");
 mouseCount = 1;
}

void draw(){

 background(BGCol);

  //logo
  fill(BGCol);
  stroke (204,102,0);
  rect(648,150,750,180);
  image(logo,648,150);
  
  
  //PIZZA'S PIZZA 2.0
  if(mouseCount == 1){
    output='A';
  }
  if(mouseCount == 2){
    output='B';
  }
  if(mouseCount == 3){
    output='C';
  }
  if(mouseCount == 4){
    output='D';
  }
  
  char letter = output;
  
  switch(letter) {
   case 'A':
   image(photo2, xP-290, height/2);
  xP += xS;
  
  if (xP > width ) {
   xS *= -1;
  }
  if (xP < 730 ) {
    xS *= -1;
  }
  if ( (mousePressed == true) && (mouseX <= xP+38) && (mouseX >= xP-286) && (mouseY >= height/2) && (mouseY <= height/2 + 214)){
  mouseCount =2;
  output ='B'; 
  delay(150);
}
  break;
  
  case 'B':
  if ((mousePressed == true) && (mouseX <= xP+38) && (mouseX >= xP-286) && (mouseY >= height/2) && (mouseY <= height/2 + 214)){
  output ='C';    
  mouseCount = 3;
  delay(150);
}
  image(photo3, xP-290, height/2);
  xP += xS;
  
  if (xP > width ) {
   xS *= -1;
  }
  if (xP < 730 ) {
    xS *= -1;
  }
  break;
  
  case 'C': 
  if ((mousePressed == true) && (mouseX <= xP+38) && (mouseX >= xP-286) && (mouseY >= height/2) && (mouseY <= height/2 + 214)){
  output ='D';    
  mouseCount = 4;
  delay(150);
}
  image(photo4, xP-290, height/2);
  xP += xS;
  
  if (xP > width ) {
   xS *= -1;
  }
  if (xP < 730 ) {
    xS *= -1;
  }
  break;
    
  case 'D':
   if ((mousePressed == true) && (mouseX <= xP+38) && (mouseX >= xP-286) && (mouseY >= height/2) && (mouseY <= height/2 + 214)){
  output ='A';    
  mouseCount = 1;
  delay(150);
}
  fill(BGCol);
  noStroke();
  image(pizzafin, xP-290, height/2);
  xP += xS;
  
  if (xP > width ) {
   xS *= -1;
  }
  if (xP < 730 ) {
    xS *= -1;
  }
  }
 image(mouse, mouseX-25 , mouseY-20);
 
 
     //SO I CAN TRACK THIS THIS, JEEEEEZZZ
  println(mouseCount);
  
  
 //sidebar
   fill(250,216,157);
   noStroke();
   rect(-2,-2, width/3,height);
 
     //Sizes below
   image(photo, 0, 30);
     //656, 427
     //328, 214
   image(jwb, width - 300, height - 116);



}
