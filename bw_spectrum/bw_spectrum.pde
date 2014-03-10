int resX = 1500;
int resY = 700;
int steps = 50;  

void setup() {
  size(resX, resY);
  colorMode(RGB,round((steps/2)));
}

void draw() {
  for(int r = 0; r < (round((steps/2))+1); r = r + 1){
    fill(r);
    stroke(r);
    rect((resX/2) - (r*(floor(resX/steps))) - 0.5*(floor(resX/steps)),0,floor(resX/steps),floor(resY));
    rect((resX/2) + (r*(floor(resX/steps))) - 0.5*(floor(resX/steps)),0,floor(resX/steps),floor(resY));
  }

  steps = int(abs(mouseX-(resX/2))/(resX/40)) + 6;
}

