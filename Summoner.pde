/*
                                                                                                                
 Summoner
 
 by Oliver Easton 
 August 2019
 
 syntax:
 poly or star(number of sides, radius of points, speed of rotation(larger is slower), angle offset at start, x position relative to center, y position relative to center);
 
 */
PShape a, ba, ca, da, ga, gha, ha, ja, ka, la, ma, nga, nya, pa, ra, doom; //, sa, ta, wa, ya;
String[] sigil = new String[19];
String folder = "C:/Users/Morgoth/Pictures/Lampung/";

//int width/2 = width/2;
//int height/2 = height/2;


void setup() {
  //size(800, 800, P2D);
  fullScreen(P2D, 2);

  //a   = loadShape("a.svg");
  //ba  = loadShape("ba.svg");
  //ca  = loadShape("ca.svg");
  //da  = loadShape("da.svg");
  //ga  = loadShape("ga.svg");
  //gha = loadShape("gha.svg");
  //ha  = loadShape("ha.svg");
  //ja  = loadShape("ja.svg");
  //ka  = loadShape("ka.svg");
  //la  = loadShape("la.svg");
  //ma  = loadShape("ma.svg");
  //nga = loadShape("nga.svg");
  //nya = loadShape("nya.svg");
  //pa  = loadShape("ga.svg");
  //ra  = loadShape("ra.svg");
  doom = loadShape("doom.svg");

  //a.disableStyle();
  //ba.disableStyle();
  //ca.disableStyle();
  //da.disableStyle();
  //ga.disableStyle();
  //gha.disableStyle();
  //ha.disableStyle();
  //ja.disableStyle();
  //ka.disableStyle();
  //la.disableStyle();
  //ma.disableStyle();
  //nga.disableStyle();
  //nya.disableStyle();
  //pa.disableStyle();
  //ra.disableStyle();
  doom.disableStyle();

  doom.scale(10);
  doom.rotate(PI/4);
}

void draw() {
  background(0, 0, 0);
  stroke(255, 100, 100);

  noFill();
  strokeWeight(1);
  //ellipse(width/2, height/2, 1414, 1414);
  //point(707*sin(frameCount*PI/600)+width/2, 707*-cos(frameCount*PI/600)+height/2);
  strokeWeight(.3);
  //shape(doom, -500+width/2, -500+height/2);
  shape(doom, 707*sin(frameCount*PI/600)+width/2, 707*-cos(frameCount*PI/600)+height/2);
  doom.rotate(PI/600);

  strokeWeight(3);
  ellipse(width/2, height/2, 1050, 1050);
  ellipse(width/2, height/2, 820, 820);
  ellipse(width/2, height/2, 420, 420);
  ellipse(width/2, height/2, 180, 180);
  ellipse(width/2, height/2, 115, 115);

  poly(6, 410, 600, 0, 0, 0);
  poly(3, 410, 600, PI, 0, 0);
  star(6, 410, 600, 0, 0, 0);

  arcGroup(230, 3, 510, 0, 0);

  circleGroup(10, 3, 410, 600, 0);
  fill(0);
  circleGroup(10, 3, 410, 600, PI);

  circleGroup(85, 3, 195, 600, 0); //205

  fill(255, 100, 100);

  //polyGroup(3, 50, 600, 0, 3, 267.5, 600, 0);

  //strokeWeight(0.75);
  //shape(a, 250*sin((1*TWO_PI/5)+frameCount*PI/-700+0)+(width)/2-75, 250*-cos((1*TWO_PI/5)+frameCount*PI/-700+0)+(height)/2-50);
  //shape(ka, 250*sin((1*TWO_PI/5)+frameCount*PI/-700+PI/2.5)+(width)/2-75, 250*-cos((1*TWO_PI/5)+frameCount*PI/-700+PI/2.5)+(height)/2-50);
  //shape(nya, 250*sin((1*TWO_PI/5)+frameCount*PI/-700+2*PI/2.5)+(width)/2-75, 250*-cos((1*TWO_PI/5)+frameCount*PI/-700+2*PI/2.5)+(height)/2-50);
  //shape(ja, 250*sin((1*TWO_PI/5)+frameCount*PI/-700+3*PI/2.5)+(width)/2-75, 250*-cos((1*TWO_PI/5)+frameCount*PI/-700+3*PI/2.5)+(height)/2-50);
  //shape(ra, 250*sin((1*TWO_PI/5)+frameCount*PI/-700+4*PI/2.5)+(width)/2-75, 250*-cos((1*TWO_PI/5)+frameCount*PI/-700+4*PI/2.5)+(height)/2-50);
  
  ////shape(ha, 450*sin((1*TWO_PI/5)+frameCount*PI/-700+PI/5)+width/2-90*sin((1*TWO_PI/5)+frameCount*PI/-700+PI/5), 450*-cos((1*TWO_PI/5)+frameCount*PI/-700+PI/5)+height/2+90*cos((1*TWO_PI/5)+frameCount*PI/-700+PI/5));
  ////ha.rotate(PI/-700);

  //strokeWeight(3);
  //star(5, 500, -700, 0, 0, 0);
  //circleGroup(75, 5, 250, -700, 0);
  //star(7, 80, -200, 0, 0, 0);
  //polyGroup(3, 20, 150, -3*PI/5, 1, 100, 150, -3*PI/5);
  //polyGroup(3, 20, 150, -PI/5, 1, 100, 150, -PI/5);
  //polyGroup(3, 20, 150, PI, 1, 100, 150, PI);
  //polyGroup(3, 20, 150, PI/5, 1, 100, 150, PI/5);
  //polyGroup(3, 20, 150, 3*PI/5, 1, 100, 150, 3*PI/5);
}

void poly(int pPoints, float pRadius, float pSpeed, float pOffset, float x, float y) {
  for (int pNum = 0; pNum < pPoints; pNum++) {
    line(
      pRadius* sin(( pNum   *TWO_PI/pPoints)+((pSpeed == 0) ? 0 : frameCount*PI/pSpeed)+pOffset)+width/2 +x, 
      pRadius*-cos(( pNum   *TWO_PI/pPoints)+((pSpeed == 0) ? 0 : frameCount*PI/pSpeed)+pOffset)+height/2+y, 
      pRadius* sin(((pNum+1)*TWO_PI/pPoints)+((pSpeed == 0) ? 0 : frameCount*PI/pSpeed)+pOffset)+width/2 +x, 
      pRadius*-cos(((pNum+1)*TWO_PI/pPoints)+((pSpeed == 0) ? 0 : frameCount*PI/pSpeed)+pOffset)+height/2+y);
  }
}

void star(int pPoints, float pRadius, float pSpeed, float pOffset, float x, float y) {
  for (int pointN = 0; pointN < pPoints; pointN++) {
    line(
      pRadius* sin(( pointN   *TWO_PI/pPoints)+((pSpeed == 0) ? 0 : frameCount*PI/pSpeed)+pOffset)+width/2 +x, 
      pRadius*-cos(( pointN   *TWO_PI/pPoints)+((pSpeed == 0) ? 0 : frameCount*PI/pSpeed)+pOffset)+height/2+y, 
      pRadius* sin(((pointN+3)*TWO_PI/pPoints)+((pSpeed == 0) ? 0 : frameCount*PI/pSpeed)+pOffset)+width/2 +x, 
      pRadius*-cos(((pointN+3)*TWO_PI/pPoints)+((pSpeed == 0) ? 0 : frameCount*PI/pSpeed)+pOffset)+height/2+y);
  }
}

void polyGroup(int pPoints, float pRadius, float pSpeed, float  pOffset, int cPoints, float cRadius, float cSpeed, float cOffset) {
  for (int cNum = 0; cNum < cPoints; cNum++) {
    poly(pPoints, pRadius, pSpeed, pOffset, cRadius*sin((cNum*TWO_PI/cPoints)+frameCount*PI/cSpeed+cOffset), -cRadius*cos((cNum*TWO_PI/cPoints)+frameCount*PI/cSpeed+cOffset));
  }
}

void starGroup(int pPoints, float pRadius, float pSpeed, float  pOffset, int cPoints, float cRadius, float cSpeed, float cOffset) {
  for (int cNum = 0; cNum < cPoints; cNum++) {
    star(pPoints, pRadius, pSpeed, pOffset, cRadius*sin((cNum*TWO_PI/cPoints)+frameCount*PI/cSpeed+cOffset), -cRadius*cos((cNum*TWO_PI/cPoints)+frameCount*PI/cSpeed+cOffset));
  }
}

void circleGroup(float pRadius, int cPoints, float cRadius, float cSpeed, float cOffset) {
  for (int cNum = 0; cNum < cPoints; cNum++) {
    ellipse(cRadius*sin((cNum*TWO_PI/cPoints)+((cSpeed == 0) ? 0 : frameCount*PI/cSpeed)+cOffset)+width/2, -cRadius*cos((cNum*TWO_PI/cPoints)+((cSpeed == 0) ? 0 : frameCount*PI/cSpeed)+cOffset)+height/2, pRadius*2, pRadius*2);
  }
}

void arcGroup(float pRadius, int cPoints, float cRadius, float cSpeed, float cOffset) {
  for (int cNum = 0; cNum < cPoints; cNum++) {
    //point(cRadius*sin((cNum*TWO_PI/cPoints)+((cSpeed == 0) ? 0 : frameCount*PI/cSpeed)+cOffset)+width/2, -cRadius*cos((cNum*TWO_PI/cPoints)+((cSpeed == 0) ? 0 : frameCount*PI/cSpeed)+cOffset)+height/2);
    arc(cRadius*sin((cNum*TWO_PI/cPoints)+((cSpeed == 0) ? 0 : frameCount*PI/cSpeed)+cOffset)+width/2, -cRadius*cos((cNum*TWO_PI/cPoints)+((cSpeed == 0) ? 0 : frameCount*PI/cSpeed)+cOffset)+height/2, pRadius*2, pRadius*2, (cNum*TWO_PI/cPoints)+PI/4.7, (cNum*TWO_PI/cPoints)+PI*QUARTER_PI);
  }
}
