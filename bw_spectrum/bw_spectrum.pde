int resX = 1500;
int resY = 700;
int steps = 50;  

//boolean sketchFullScreen() {
//  return true;
//}

void setup() {
  size(resX, resY);
  colorMode(RGB,round((steps/2)));
}

void draw() {
  for(int r = 0; r < (round((steps/2))+1); r = r + 1){
    fill(abs(r-(steps/2)));
    stroke(abs(r-(steps/2)));
    rect(r*(floor(resX/steps)),0,floor(resX/steps),floor(resY));
  }
  
  for(int r = round(steps/2); r >= 0; r = r - 1){
    fill(abs(r-(steps/2)));
    stroke(abs(r-(steps/2)));
    rect(resX - r*(floor(resX/steps)),0,floor(resX/steps),floor(resY));
  }

  steps = int(abs(mouseX-(resX/2))/(resX/40)) + 6;
}

