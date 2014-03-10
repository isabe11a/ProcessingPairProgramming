int resX = 1500;
int resY = 700;
int step = 10;
int len = 5;
int bckCol = 255;
int strkCol = 0;

void setup() {
  size(resX, resY);
  stroke(0);
}

void draw() {
  background(bckCol);
  stroke(strkCol);
  for(int r = 1; r < (resX/step); r = r + 1){
    for(int c = 1; c < (resY/step); c = c + 1){
      float hyp = sqrt(sq(mouseY - (c*step)) + sq(mouseX - (r*step)));
      float x_prime = ((mouseX - (r*step)) / hyp) * len; 
      float y_prime = ((mouseY - (c*step)) / hyp) * len; 
      line((r*step),(c*step),((r*step)+x_prime),((c*step)+y_prime));
    }
  }
}

void mousePressed(){
  if (bckCol == 255){
    bckCol = 0;
    strkCol = 255;
  }
  else{
    bckCol = 255;
    strkCol = 0;
  }
}
