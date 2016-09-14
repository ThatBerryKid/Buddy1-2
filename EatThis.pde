float xP = 750;
float xS = 7;
PImage photo, photo2, photo3, photo4, logo, jwb;
color BGCol = color(221,243,250);

void setup(){
 size(1500,1000);
 photo = loadImage("pizza1_big.png");
 photo2 = loadImage("pizza1.png");
 photo3 = loadImage("pizza2.png");
 photo4 = loadImage("pizza3.png");
 logo = loadImage("logo.png");
 jwb = loadImage("jwberry_fused_small.png");
 
}

void draw(){

 background(BGCol);

  //logo
  fill(BGCol);
  stroke (204,102,0);
  rect(648,150,750,180);
  image(logo,648,150);
  
  
  //PIZZA'S PIZZA 2.0
  image(photo2, xP-290, height/2);
  xP += xS;
  
  if (xP > width ) {
   xS *= -1;
  }
  if (xP < 730 ) {
    xS *= -1;
  }
  
  if (mousePressed == true){
    fill(BGCol);
    noStroke();
    rect(xP-290,height/2,350,214);
  }
  
  
  
  
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