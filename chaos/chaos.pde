void setup() {
  size(500, 500);
  //noStroke();
  background(255);
  
}


int lastPointX = 100;
int lastPointY = 100;

void draw() {
 
 calc();
}

int x1 = 250;
int y1 = 10;

int x2 = 50;
int y2 = 400;

int x3 = 450;
int y3 = 400; 

color a = color(0,0,0);
color b = color(100, 100, 100);
color c = color(50, 55, 100);

void calc() {
  int randNum = int(random(6));
  print(randNum);
  switch(randNum){
    case 0:
    case 1:
      fill(a);
      point((int)abs((x1 + lastPointX)/2), (int)abs((lastPointY + y1)/2));
      lastPointX = abs((x1 + lastPointX)/2);
      lastPointY = abs((lastPointY + y1)/2);
      break;
    case 2:
    case 3:
      fill(b);
      point((int)abs((lastPointX + x2)/2), (int)abs((y2 + lastPointY)/2));
      lastPointX = abs((lastPointX + x2)/2);
      lastPointY = abs((y2 + lastPointY)/2);
      break;
    case 4:
    case 5:
      fill(c);
      point((int)abs((x3 + lastPointX)/2), (int)abs((y3 + lastPointY)/2));
      lastPointX = abs((x3 + lastPointX)/2);
      lastPointY = abs((y3 + lastPointY)/2);
      break;
    
  }
   
}
