/*Name: Gráinne O' Connor. Student Number: 11402918. This sketch is titled "Saoirse don Phailistín" and displays symbols (indicated by appropriate camelCase naming convention)
 of Palestinian resistance through use of a range of programming methods, loops, interactivity, shapes, colours, lines, and text*/

/*Position sketch in top left of display window.
 Set sketch to 1280 pixels wide and 720 pixels high.
 Call on Processing methods setup() and draw() to enable animation*/
void setup() {
  size(1280, 720);
  surface.setLocation(0, 0);
}
//Create global variables for the keyPressed() method//
int valueGreenR = 31;
int valueGreenG = 141;
int valueGreenB = 74;
void draw() {
  //set background to black
  background(0);
  /*Remove cursor from view when mouse is pressed both left and right.
   Use if statement and system variable mousePressed and system method noCursor() to achieve this*/
  {
    if (mousePressed == true) {
      noCursor();
    }
  }

  /*Create while loops to form grids of various cell dimensions and parameters based on the 1280*720 sketch size.
   Use camelCase variable names for the grids' x,y coordinates and to make clear what colours will be used*/
  {
    int xCoord = 0;
    int yCoord = 0;

    int i=1;
    while (i <=3) {
      stroke(212, 28, 28, 100);
      strokeWeight(3);
      line(xCoord, yCoord, width, yCoord);
      yCoord += height/3;
      i++;
    }
    int j = 1;
    while (j <=4)
    {
      line(xCoord, yCoord-height, xCoord, height);
      xCoord += width/4;
      j++;
    }
    int xGreen = 80;
    int yGreen= 80;

    int m=1;
    while (m <=3) {
      stroke(151, 232, 159, 100);
      strokeWeight(10);
      line(xGreen-80, yGreen, width, yGreen);
      yGreen += height/3;
      m++;
    }
    int n = 1;
    while (n <=4)
    {
      line(xGreen, yGreen-800, xGreen, height);
      xGreen += width/4;
      n++;
    }

    int xDarkGreen = 160;
    int yDarkGreen  = 120;

    int o=1;
    while (o <=3) {
      stroke(31, 141, 74, 60);
      strokeWeight(15);
      line(xDarkGreen-160, yDarkGreen, width, yDarkGreen);
      yDarkGreen += height/3;
      o++;
    }
    int p = 1;
    while (p <=4)
    {
      line(xDarkGreen, yDarkGreen-880, xDarkGreen, height);
      xDarkGreen += width/4;
      p++;
    }

    int xWhite = 240;
    int yWhite = 180;

    int q=1;
    while (q <=3) {
      stroke(233, 240, 185, 60);
      strokeWeight(1);
      line(xWhite-240, yWhite, width, yWhite);
      yWhite += height/3;
      q++;
    }
    int r = 1;
    while (r <=4)
    {
      line(xWhite, yWhite-960, xWhite, height);
      xWhite += width/4;
      r++;
    }
  }
  //Call bespoke methods which take no parameters and are defined further down in sketch//
  {
    drawWaterMelon();
  }
  {
    drawHearts();
  }
  {
    drawOliveLeaves();
  }
  {
    drawFishingNet();
  }
  {
    drawLeaves();
  }
  //Call bespoke overloaded method to change some parameters on a triangle drawn across the screen
  {
    drawTriangle(212, 28, 28, 6, 240, height-40, 280, height - 80, 320, height-40);
    drawTriangle(212, 28, 28, 6, 560, height-40, 600, height - 80, 640, height-40);
    drawTriangle(212, 28, 28, 6, 880, height-40, 920, height - 80, 960, height-40);
  }
  {
    drawTriangle(400, height-40, 440, height - 80, 480, height-40);
    drawTriangle(720, height-40, 760, height - 80, 800, height-40);
    drawTriangle(1060, height-40, 1100, height - 80, 1140, height-40);
  }
  {
    printName();
  }
  {
    printStudentNumber();
  }
  {
    writeFreePalestine();
  }
  {
    writeAsGaeilge();
  }
  /*Call bespoke method completeFlower() which changes the starting x,y coordinates of petal methods using grid cell dimensions;
   Use nested for loop to replicate petal pattern across and down the sketch*/
  int gridCellWidth = width/4;
  int gridCellHeight = height/3;
  for (int  x= 1; x<4; x++) {
    for (int y=1; y<3; y++) {
      completeFlower(gridCellWidth*x, gridCellHeight*y); //1280/4 = 320  720/3 = 240
    }
  }
}
void completeFlower(int startX, int startY) {
  //call petal methods and pass in parameters according to the below method definitions//
  {
    petalPattern(151, 232, 159, 3, startX-65, startY-25, startX-30, startY-25); //320 -? = 255 ..65  240-? = 215 ..25
    petalPattern(valueGreenR, valueGreenG, valueGreenB, 3, startX-105, startY-25, startX-70, startY-25);
    petalPattern(151, 232, 159, 3, startX+15, startY+10, startX+50, startY+10);
    petalPattern(valueGreenR, valueGreenG, valueGreenB, 3, startX+55, startY+10, startX+90, startY+10);

    petalPatternFlip(valueGreenR, valueGreenG, valueGreenB, 3, startX-90, startY+10, startX-55, startY+10);
    petalPatternFlip(valueGreenR, valueGreenG, valueGreenB, 3, startX+65, startY-25, startX+100, startY-25);
    petalPatternFlip(151, 232, 159, 3, startX-50, startY+10, startX-15, startY+10);
    petalPatternFlip(151, 232, 159, 3, startX+25, startY-25, startX+60, startY-25);

    petalsDown(151, 232, 159, 3, startX-25, startY-60, startX-25, startY-25);
    petalsDown(valueGreenR, valueGreenG, valueGreenB, 3, startX-25, startY-100, startX-25, startY-65);
    petalsDown(151, 232, 159, 3, startX+10, startY+10, startX+10, startY+45);
    petalsDown(valueGreenR, valueGreenG, valueGreenB, 3, startX+10, startY+50, startX+10, startY+85);

    petalsUp(151, 232, 159, 3, startX+10, startY-50, startX+10, startY-15);
    petalsUp(valueGreenR, valueGreenG, valueGreenB, 3, startX+10, startY-90, startX+10, startY-55);
    petalsUp(151, 232, 159, 3, startX-25, startY+25, startX-25, startY+65);
    petalsUp(valueGreenR, valueGreenG, valueGreenB, 3, startX-25, startY+65, startX-25, startY+100);
  }
}

//define bespoke petalPattern() which takes parameters for RGB values, x,y coordinates for start and finish of line, and strokeWeight//
void petalPattern(int strokeR, int strokeG, int strokeB, int thickness, int xCoordA, int yCoordA, int xCoordB, int yCoordB)
  //Use for loops to determine the space between the lines each time they are drawn//
{
  for (int i=0; i<4; i++)
  {
    stroke(strokeR, strokeG, strokeB);
    strokeWeight(thickness);
    line(xCoordA, yCoordA, xCoordB, yCoordB);
    xCoordA += 5;
    yCoordA += 5;
    xCoordB +=5;
    yCoordB +=5;
  }
}
//define bespoke petalPatternFlip() which takes parameters for RGB values, x,y coordinates for start and finish of line, and strokeWeight//
void petalPatternFlip(int strokeR, int strokeG, int strokeB, int thickness, int xCoordA, int yCoordA, int xCoordB, int yCoordB)
  //Use for loops to determine the space between the lines each time they are drawn//
{
  for (int k=0; k<4; k++)
  {
    stroke(strokeR, strokeG, strokeB);
    strokeWeight(thickness);
    line(xCoordA, yCoordA, xCoordB, yCoordB);
    xCoordA -= 5;
    yCoordA += 5;
    xCoordB -=5;
    yCoordB +=5;
  }
}
//define bespoke petalsDown() which takes parameters for RGB values, x,y coordinates for start and finish of line, and strokeWeight//
void petalsDown(int strokeR, int strokeG, int strokeB, int thickness, int xCoordA, int yCoordA, int xCoordB, int yCoordB)
  //Use for loops to determine the space between the lines each time they are drawn//
{
  for (int i=0; i<4; i++)
  {
    stroke(strokeR, strokeG, strokeB);
    strokeWeight(thickness);
    line(xCoordA, yCoordA, xCoordB, yCoordB);
    xCoordA += 5;
    yCoordA += 5;
    xCoordB +=5;
    yCoordB +=5;
  }
}
//define bespoke petalsDown() which takes parameters for RGB values, x,y coordinates for start and finish of line, and strokeWeight//
void petalsUp(int strokeR, int strokeG, int strokeB, int thickness, int xCoordA, int yCoordA, int xCoordB, int yCoordB)
  //Use for loops to determine the space between the lines each time they are drawn//
{
  for (int i=0; i<4; i++)
  {
    stroke(strokeR, strokeG, strokeB);
    strokeWeight(thickness);
    line(xCoordA, yCoordA, xCoordB, yCoordB);
    xCoordA += 5;
    yCoordA -= 5;
    xCoordB +=5;
    yCoordB -=5;
  }
}
//string method to display full name at top left of sketch
void printName() {
  String name = "Gráinne O' Connor";
  fill(255, 255, 255);
  textSize(30);
  text(name, 20, 30);
}

//string method to display student number at bottom left of sketch
void printStudentNumber() {
  String studentnumber = "11402918";
  fill(255, 255, 255);
  textSize(30);
  text(studentnumber, 20, height-40);
}
//string method using substring method to change colours of each word in variable message
void writeFreePalestine() {
  String message = "Free Palestine";
  fill(212, 28, 28, 200);
  textSize(40);
  text(message.substring(0, 4), 450, height-127);
  fill(31, 141, 74, 200);
  text(message.substring(4, 14), 720, height-127);
}
//string method using substring method to change colours of each word in variable msg
void writeAsGaeilge() {
  String msg = "Saoirse don Phailistín";
  fill(151, 232, 159, 150);
  textSize(40);
  text(msg.substring(0, 7), 170, 113);
  fill(31, 141, 74, 200);
  text(msg.substring(8, 11), 600, 113);
  fill(212, 28, 28, 200);
  text(msg.substring(12, 22), 920, 113);
}

//define drawHearts() method as having no parameters
//Use shapes arc() and triangle() to create heart shape.
//Use nested for loops to replicate across the sketch.
void drawHearts() {
  int leftArc = 20;
  int rightArc = 60;
  int finishHeart = 0;
  for (int s = 1; s<=8; s++) {
    for (int t = 1; t<=8; t++) {
      for (int u = 1; u<=8; u++) {
        noStroke();
        fill(233, 240, 185, 50);
        arc(leftArc, height-80, 40, 40, radians(180), radians(360));
        leftArc=leftArc+160;
      }
      arc(rightArc, height-80, 40, 40, radians(180), radians(360));
      rightArc=rightArc+160;
    }
    triangle(finishHeart, height-80, finishHeart+40, height-40, finishHeart+80, height-80);
    finishHeart = finishHeart+160;
  }
  int leftArcGreen = 25;
  int rightArcGreen = 65;
  int finishHeartGreen = 5;
  for (int v = 1; v<=8; v++) {
    for (int w = 1; w<=8; w++) {
      for (int z = 1; z<=8; z++) {
        noStroke();
        fill(151, 232, 159, 100);
        arc(leftArcGreen, height-80, 40, 40, radians(180), radians(360));
        leftArcGreen=leftArcGreen+160;
      }
      arc(rightArcGreen, height-80, 40, 40, radians(180), radians(360));
      rightArcGreen=rightArcGreen+160;
    }
    triangle(finishHeartGreen, height-80, finishHeartGreen+40, height-40, finishHeartGreen+80, height-80);
    finishHeartGreen = finishHeartGreen+160;
  }
  int leftArcShade = 30;
  int rightArcShade = 70;
  int finishHeartShade = 10;
  for (int a = 1; a<=8; a++) {
    for (int b = 1; b<=8; b++) {
      for (int c = 1; c<=8; c++) {
        noStroke();
        fill(31, 141, 74, 100);
        arc(leftArcShade, height-80, 40, 40, radians(180), radians(360));
        leftArcShade=leftArcShade+160;
      }
      arc(rightArcShade, height-80, 40, 40, radians(180), radians(360));
      rightArcShade=rightArcShade+160;
    }
    triangle(finishHeartShade, height-80, finishHeartShade+40, height-40, finishHeartShade+80, height-80);
    finishHeartShade = finishHeartShade+160;
  }
}
//define drawOliveLeaves method as having no parameters
void drawOliveLeaves() {
  //use for loop to replicate pattern down the screen//
  int LeafY = 0;
  for (int i = 0; i<=36; i++) {
    fill(212, 28, 28, 160);
    arc(width-120, LeafY, 55, 15, radians(260), radians(360));
    arc(width-60, LeafY, 55, 15, radians(180), radians(280));
    stroke(212, 28, 28, 160);
    strokeWeight(3);
    line(width-90, LeafY, width-90, LeafY+5);
    line(width-55, LeafY+9, width-53, LeafY);
    line(width-125, LeafY+9, width-128, LeafY);
    LeafY = LeafY+20;
  }
}
void drawFishingNet() {
  //use for loop to replicate line patterns to look like fishnet
  int netX = 0;
  int netY = 0;
  for (int j = 0; j<=8; j++) {
    stroke(247, 259, 219, 50);
    strokeWeight(3);
    line(netX, netY, netX+80, netY+80);
    stroke(31, 141, 74, 100);
    line(netX+80, netY, netX, netY+80);
    stroke(247, 259, 219, 100);
    line(netX+80, netY, netX+160, netY+80);
    stroke(31, 141, 74, 100);
    line(netX+160, netY, netX+80, netY+80);
    netY = netY+80 ;
  }
  {
    //use while loop to replicate hearts along the fishnet
    int i =0;
    int netHeartY = 0;
    while (i <=5) {
      noStroke();
      fill(212, 28, 28);
      triangle(30, netHeartY+45, 40, netHeartY+35, 50, netHeartY+45);
      arc(35, netHeartY+45, 10, 10, radians(360), radians(540));
      arc(45, netHeartY+45, 10, 10, radians(360), radians(540));
      triangle(110, netHeartY+45, 120, netHeartY+35, 130, netHeartY+45);
      arc(115, netHeartY+45, 10, 10, radians(360), radians(540));
      arc(125, netHeartY+45, 10, 10, radians(360), radians(540));
      fill(233, 240, 185);
      triangle(70, netHeartY, 80, netHeartY+10, 90, netHeartY);
      arc(75, netHeartY, 10, 10, radians(180), radians(360));
      arc(85, netHeartY, 10, 10, radians(180), radians(360));
      triangle(150, netHeartY+80, 160, netHeartY+90, 170, netHeartY+80);
      arc(155, netHeartY+80, 10, 10, radians(180), radians(360));
      arc(165, netHeartY+80, 10, 10, radians(180), radians(360));
      fill(31, 141, 74);
      triangle(110, netHeartY+120, 120, netHeartY+130, 130, netHeartY+120);
      arc(115, netHeartY+120, 10, 10, radians(180), radians(360));
      arc(125, netHeartY+120, 10, 10, radians(180), radians(360));
      // use system method random(); to randomise colours of some of the hearts
      // use int() to cast and switch results from float to int for random();
      int r = int(random(4));
      //use if statements to allocate various RGB values according to results//
      if (r == 0) {
        fill(233, 240, 185);
      }
      if (r == 1) {
        fill(31, 141, 74);
      }
      if (r == 2) {
        fill(212, 28, 28);
      } else {
        fill(151, 232, 159);
      }

      triangle(70, netHeartY+80, 80, netHeartY+90, 90, netHeartY+80);
      arc(75, netHeartY+80, 10, 10, radians(180), radians(360));
      arc(85, netHeartY+80, 10, 10, radians(180), radians(360));
      triangle(150, netHeartY, 160, netHeartY+10, 170, netHeartY);
      arc(155, netHeartY, 10, 10, radians(180), radians(360));
      arc(165, netHeartY, 10, 10, radians(180), radians(360));
      triangle(30, netHeartY+120, 40, netHeartY+130, 50, netHeartY+120);
      arc(35, netHeartY+120, 10, 10, radians(180), radians(360));
      arc(45, netHeartY+120, 10, 10, radians(180), radians(360));
      netHeartY = netHeartY+160;
      i++;
    }
  }
}
/*Use bespoke return method getRandomNumberBetween to randomise the opacity of the color of
 the watermelon pips in below drawWaterMelon() method*/

int getRandomNumberBetween(int num1, int num2) {
  int randomNumber = int(random(num1, num2));
  return randomNumber;
}
//define drawWaterMelon as bespoke method, no parameters
void drawWaterMelon() {

  int pipX=0;
  int waterMelonX = 0;
  for (int w = 1; w<=4; w++) {
    stroke(31, 141, 74, 200);
    strokeWeight(10);
    fill(212, 28, 28, 100);
    arc(waterMelonX + 280, 0, 240, 160, radians(360), radians(540));
    waterMelonX = waterMelonX+240;
  }
  for (int p = 1; p<=4; p++) {
    noStroke();
    //use variable int opacity to call return method and randomise
    //opacity of pips within range 100-200 in drawWateMelon method
    int opacity = getRandomNumberBetween(100, 200);
    fill(pipX+151, 232, 159, opacity);
    rect(pipX+200, 10, 5, 10);
    rect(pipX+250, 10, 5, 10);
    rect(pipX+300, 10, 5, 10);
    rect(pipX+350, 10, 5, 10);
    rect(pipX+225, 40, 5, 10);
    rect(pipX+275, 40, 5, 10);
    rect(pipX+325, 40, 5, 10);
    pipX = pipX+240;
  }
}
//define drawLeaves() as bespoke method, no parameters
void drawLeaves() {
  //use for loops and camelCase variables for x,y coordinates to replicate leaf patterns around each flower
  int upperTopLeftX = 220;
  int upperTopLeftY= 180;
  for (int ii = 0; ii<=2; ii++) {
    noStroke();
    fill(233, 240, 185, 50);
    triangle(upperTopLeftX, upperTopLeftY, upperTopLeftX+40, upperTopLeftY+30, upperTopLeftX+70, upperTopLeftY+30);
    triangle(upperTopLeftX+35, upperTopLeftY-30, upperTopLeftX+70, upperTopLeftY, upperTopLeftX+70, upperTopLeftY+30);
    fill(212, 28, 28, 100);
    triangle(upperTopLeftX+5, upperTopLeftY-25, upperTopLeftX+40, upperTopLeftY+30, upperTopLeftX+70, upperTopLeftY+30);
    triangle(upperTopLeftX+5, upperTopLeftY-25, upperTopLeftX+70, upperTopLeftY, upperTopLeftX+70, upperTopLeftY+30);
    upperTopLeftX = upperTopLeftX+320;
  }
  int lowerTopLeftX = 220;
  int lowerTopLeftY = 420;
  for (int jj=0; jj<=2; jj++) {
    noStroke();
    fill(233, 240, 185, 50);
    triangle(lowerTopLeftX, lowerTopLeftY, lowerTopLeftX+40, lowerTopLeftY+30, lowerTopLeftX+70, lowerTopLeftY+30);
    triangle(lowerTopLeftX+35, lowerTopLeftY-30, lowerTopLeftX+70, lowerTopLeftY, lowerTopLeftX+70, lowerTopLeftY+30);
    fill(212, 28, 28, 100);
    triangle(lowerTopLeftX+5, lowerTopLeftY-25, lowerTopLeftX+40, lowerTopLeftY+30, lowerTopLeftX+70, lowerTopLeftY+30);
    triangle(lowerTopLeftX+5, lowerTopLeftY-25, lowerTopLeftX+70, lowerTopLeftY, lowerTopLeftX+70, lowerTopLeftY+30);
    lowerTopLeftX = lowerTopLeftX+320;
  }
  int upperTopRightX = 350;
  for (int kk=0; kk<=2; kk++) {
    fill(233, 240, 185, 50);
    triangle(upperTopRightX, 210, upperTopRightX, 180, upperTopRightX+35, 150);
    triangle(upperTopRightX, 210, upperTopRightX+30, 210, upperTopRightX+80, 180);
    fill(212, 28, 28, 100);
    triangle(upperTopRightX, 210, upperTopRightX, 180, upperTopRightX+65, 150);
    triangle(upperTopRightX, 210, upperTopRightX+30, 210, upperTopRightX+65, 150);
    upperTopRightX = upperTopRightX+320;
  }
  int lowerTopRightX = 350;
  for (int ll=0; ll<=2; ll++) {
    fill(233, 240, 185, 50);
    triangle(lowerTopRightX, 210+240, lowerTopRightX, 180+240, lowerTopRightX+35, 150+240);
    triangle(lowerTopRightX, 210+240, lowerTopRightX+30, 210+240, lowerTopRightX+80, 180+240);
    fill(212, 28, 28, 100);
    triangle(lowerTopRightX, 210+240, lowerTopRightX, 180+240, lowerTopRightX+65, 150+240);
    triangle(lowerTopRightX, 210+240, lowerTopRightX+30, 210+240, lowerTopRightX+65, 150+240);
    lowerTopRightX = lowerTopRightX+320;
  }
  int upperBottomLeftX = 290;
  for (int aa=0; aa<=2; aa++) {
    fill(233, 240, 185, 50);
    triangle(upperBottomLeftX, 270, upperBottomLeftX-30, 270, upperBottomLeftX-65, 300);
    triangle(upperBottomLeftX, 270, upperBottomLeftX, 300, upperBottomLeftX-30, 340);
    fill(212, 28, 28, 100);
    triangle(upperBottomLeftX, 270, upperBottomLeftX-30, 270, upperBottomLeftX-65, 330);
    triangle(upperBottomLeftX, 270, upperBottomLeftX, 300, upperBottomLeftX-65, 330);
    upperBottomLeftX = upperBottomLeftX+320;
  }
  int lowerBottomLeftX = 290;
  for (int bb=0; bb<=2; bb++) {
    fill(233, 240, 185, 50);
    triangle(lowerBottomLeftX, 270+240, lowerBottomLeftX-30, 270+240, lowerBottomLeftX-65, 300+240);
    triangle(lowerBottomLeftX, 270+240, lowerBottomLeftX, 300+240, lowerBottomLeftX-30, 340+240);
    fill(212, 28, 28, 100);
    triangle(lowerBottomLeftX, 270+240, lowerBottomLeftX-30, 270+240, lowerBottomLeftX-65, 330+240);
    triangle(lowerBottomLeftX, 270+240, lowerBottomLeftX, 300+240, lowerBottomLeftX-65, 330+240);
    lowerBottomLeftX = lowerBottomLeftX+320;
  }

  int upperBottomRightX = 350;
  for (int c=0; c<=2; c++) {
    fill(233, 240, 185, 50);
    triangle(upperBottomRightX, 270, upperBottomRightX+30, 270, upperBottomRightX+70, 300);
    triangle(upperBottomRightX, 270, upperBottomRightX, 300, upperBottomRightX+30, 340);
    fill(212, 28, 28, 100);
    triangle(upperBottomRightX, 270, upperBottomRightX+30, 270, upperBottomRightX+70, 330);
    triangle(upperBottomRightX, 270, upperBottomRightX, 300, upperBottomRightX+70, 330);
    upperBottomRightX = upperBottomRightX+320;
  }

  int lowerBottomRightX = 350;
  for (int d=0; d<=2; d++) {
    fill(233, 240, 185, 50);
    triangle(lowerBottomRightX, 270+240, lowerBottomRightX+30, 270+240, lowerBottomRightX+70, 300+240);
    triangle(lowerBottomRightX, 270+240, lowerBottomRightX, 300+240, lowerBottomRightX+30, 340+240);
    fill(212, 28, 28, 100);
    triangle(lowerBottomRightX, 270+240, lowerBottomRightX+30, 270+240, lowerBottomRightX+70, 330+240);
    triangle(lowerBottomRightX, 270+240, lowerBottomRightX, 300+240, lowerBottomRightX+70, 330+240);
    lowerBottomRightX = lowerBottomRightX+320;
  }
}
//use mouseDragged() mouse method
void mouseDragged() {
  //use if statements with system variable mouseButtons LEFT and RIGHT to show two different drawings in the sketch
  if (mousePressed == true) {
    if ((mouseX < 640) && (mouseY < 385)) {
      stroke(212, 28, 28, 200);
      fill(0, 0, 0);
      rect(mouseX, mouseY, 160, 40);
      fill(233, 240, 185);
      rect(mouseX, mouseY+40, 160, 40);
      fill(31, 141, 74);
      rect(mouseX, mouseY+80, 160, 40);
      fill(212, 28, 28);
      triangle(mouseX, mouseY, mouseX, mouseY+120, mouseX+40, mouseY+60);
    }
    if ((mouseX <640) && (mouseY > 385)) {
      stroke(212, 28, 28, 200);
      fill(0, 0, 0);
      rect(mouseX, mouseY, 160*2, 40*2);
      fill(233, 240, 185);
      rect(mouseX, (mouseY+(40*2)), 160*2, 40*2);
      fill(31, 141, 74);
      rect(mouseX, mouseY+(80*2), 160*2, 40*2);
      fill(212, 28, 28);
      triangle(mouseX, mouseY, mouseX, mouseY+(120*2), mouseX+(40*2), mouseY+(60*2));
    }
    if ((mouseX >640) && (mouseY < 385)) {
      stroke(212, 28, 28, 200);
      fill(0, 0, 0);
      rect(mouseX, mouseY, 160*4, 40*4);
      fill(233, 240, 185);
      rect(mouseX, (mouseY+(40*4)), 160*4, 40*4);
      fill(31, 141, 74);
      rect(mouseX, mouseY+(80*4), 160*4, 40*4);
      fill(212, 28, 28);
      triangle(mouseX, mouseY, mouseX, mouseY+(120*4), mouseX+(40*4), mouseY+(60*4));
      if ((mouseX >640) && (mouseY > 385)) {
        stroke(212, 28, 28, 200);
        fill(0, 0, 0);
        rect(mouseX, mouseY, 160*4, 40*4);
        fill(233, 240, 185);
        rect(mouseX, (mouseY+(40*4)), 160*4, 40*4);
        fill(31, 141, 74);
        rect(mouseX, mouseY+(80*4), 160*4, 40*4);
        fill(212, 28, 28);
        triangle(mouseX, mouseY, mouseX, mouseY+(120*4), mouseX+(40*4), mouseY+(60*4));
      }
    }
  }
}


//use mouseMoved() mouse method to have drawing appear when cursor is moved across sketch without any button pressed
void mouseMoved() {
  stroke(31, 141, 74, 100);
  fill(151, 232, 159, 200);
  triangle(mouseX, mouseY-60, mouseX+40, mouseY+30, mouseX+80, mouseY-60);
  noStroke();
  fill(151, 232, 159, 40);
  triangle(mouseX-20, mouseY-40, mouseX+20, mouseY+50, mouseX+60, mouseY-40);
  stroke(233, 240, 185, 20);
  fill(212, 28, 28, 100);
  triangle(mouseX-10, mouseY-30, mouseX+30, mouseY+60, mouseX+70, mouseY-30);
  fill(212, 28, 28, 40);
  triangle(mouseX-40, mouseY-20, mouseX, mouseY+70, mouseX+40, mouseY-20);
  stroke(212, 28, 28, 100);
  strokeWeight(3);
  fill(31, 141, 74, 100);
  triangle(mouseX+20, mouseY-40, mouseX+60, mouseY+50, mouseX+120, mouseY-40);
}

//use Processing method keyPressed() to have the dark green outer petals within
//flower patterns switch to red when any key is pressed
void keyPressed() {
  if (valueGreenR == 31) {
    valueGreenR = 212;
  } else {
    valueGreenR = 31;
  }
  if (valueGreenG == 141) {
    valueGreenG = 28;
  } else {
    valueGreenG = 141;
  }
  if (valueGreenB == 74) {
    valueGreenB = 28;
  } else {
    valueGreenB = 74;
  }
}
//overloaded method 10 parameters (some parameters removed below to demonstrate overloading)
void drawTriangle(int strokeR, int strokeG, int strokeB, int strokeThickness, int firstAngleX, int firstAngleY, int secondAngleX, int secondAngleY, int thirdAngleX, int thirdAngleY) {
  stroke(strokeR, strokeG, strokeB);
  strokeWeight(strokeThickness);
  noFill();
  triangle(firstAngleX, firstAngleY, secondAngleX, secondAngleY, thirdAngleX, thirdAngleY);
}
//overloaded method 6 parameters (removed strokeR, strokeG, strokeB, and strokeWeight)
void drawTriangle(int firstAngleX, int firstAngleY, int secondAngleX, int secondAngleY, int thirdAngleX, int thirdAngleY) {
  noStroke();
  fill(212, 28, 28, 100);
  triangle(firstAngleX, firstAngleY, secondAngleX, secondAngleY, thirdAngleX, thirdAngleY);
}
//use mouse method mouseClicked() with right click condition (if statement) to save screenshot of sketch as .PNG
void mouseClicked() {
  String fileName = "GráinneOConnor.PNG";
  if (mouseButton == RIGHT) {
    save(fileName);
  }
}
//Call mousePressed() method and set conditions using nested and branches if statements to draw a watermelon shape 
//on one side of the sketch and invert its position and colours when mouse is pressed on the opposite side of sketch
void mousePressed() {
  if (mouseButton == RIGHT) {
    if (mouseX > 640) {
      strokeWeight(7);
      stroke(151, 232, 159, 200);
      fill(212, 28, 28, 255);
      arc(mouseX, mouseY, 170, 150, radians(180), radians(360));
      fill(151, 232, 159, 200);
      triangle(mouseX+30, mouseY-40, mouseX+31, mouseY-41, mouseX+32, mouseY-40);
      triangle(mouseX-40, mouseY-30, mouseX-39, mouseY-31, mouseX-38, mouseY-30);
      triangle(mouseX+50, mouseY-10, mouseX+51, mouseY-11, mouseX+52, mouseY-10);
      triangle(mouseX+10, mouseY-20, mouseX+11, mouseY-21, mouseX+12, mouseY-20);
      triangle(mouseX-50, mouseY-10, mouseX-49, mouseY-11, mouseX-48, mouseY-10);
      triangle(mouseX-10, mouseY-50, mouseX-9, mouseY-51, mouseX-8, mouseY-50);
    }
  }
  if (mouseX < 640) {
    strokeWeight(7);
    stroke(212, 28, 28, 255);
    fill(151, 232, 159);
    arc(mouseX, mouseY, 170, 150, radians(360), radians(540));
    fill(212, 28, 28, 255);
    triangle(mouseX+30, mouseY+40, mouseX+31, mouseY+41, mouseX+32, mouseY+40);
    triangle(mouseX-40, mouseY+30, mouseX-39, mouseY+31, mouseX-38, mouseY+30);
    triangle(mouseX+50, mouseY+10, mouseX+51, mouseY+11, mouseX+52, mouseY+10);
    triangle(mouseX+10, mouseY+20, mouseX+11, mouseY+21, mouseX+12, mouseY+20);
    triangle(mouseX-50, mouseY+10, mouseX-49, mouseY+11, mouseX-48, mouseY+10);
    triangle(mouseX-10, mouseY+50, mouseX-9, mouseY+51, mouseX-8, mouseY+50);
  }
}
