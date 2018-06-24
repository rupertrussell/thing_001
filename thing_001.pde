// from https://www.openprocessing.org/sketch/138949/
// PushPop Terminology by Agoston Nagy

float a;                 // Angle of rotation
float offset = PI/10.0;  // Angle offset between boxes
int num = 10;            // Number of boxes
int count = 0;
void setup() 
{ 
  size(400, 400, P3D);
  noStroke();
} 


void draw() {
  lights();
  colorMode(RGB);
  background(0);
  translate(width/2, height/2); 
  colorMode(HSB);
  for (float i = 0; i < num; i++) {


    pushMatrix();
    fill(map(i, 0, num-1, 0, 255), 255, 255);
    rotateY(a + offset*i);
    rotateX(a/2 + offset*i);
    box(200);
    popMatrix();
    count ++;
    println(count);

    if (frameCount == 1001) {
      exit();
    }
  }

  a += 0.01;
  saveFrame("####.png");
}
