// Build a gridd of 10 x 10 images

PImage frame;  //  Create  variable to hold the 400 x 400 image
int numberOfSmallTiles = 100;
int units = 0;
int tens = 0;
int hundreds = 0;
int frameNumber = 0;

void setup() {
  size(4000, 4000);
}

void draw() {
  // 10 x 10 Gird of random white tiles
  for (int i = 0; i < 10; i = i + 1) {
    for (int j = 0; j < 10; j = j + 1) {

      println(frameNumber);
      if (frameNumber == 100) {
        println("saving");
        save("grid_002.png");
        exit();
      }


      getFrame();

      image(frame, i * 400, j * 400);

      if (units < 9) {
        units ++;
      } else {
        units = 0;
        if (tens < 9) {
          tens ++;
        } else {
          tens = 0;
          hundreds++;
        }
      }
    }
  }
}


void getFrame() {
  if (hundreds == 2) {
    exit();
  }
  frame = loadImage(str(hundreds) + str(tens) + str(units) + ".png");  // load next frame
  if (units < 9) {
    units ++;
  } else {
    units = 0;
    if (tens < 9) {
      tens ++;
    } else {
      tens = 0;
      hundreds++;
    }
  }
  frameNumber ++;
}
