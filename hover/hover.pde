int resX = 1200;          // width in pixels
int resY = 500;           // height in pixels
float step = 20;          // space between dots
int bckCol = 255;         // original background color, either 0 for black or 255 for white
int strkCol = 0;          // original stroke and fill color, either 0 for black or 255 for white
int tiers = 10;           // number of lelvels around center (cursor location) 
int tight = 12;           // must be >= to tiers in order to work properly 
int inc = tight/tiers;

void setup() {
  size(resX, resY);
  ellipseMode(CENTER);
}

void draw(){
  background(bckCol);
  stroke(strkCol);
  fill(strkCol);
  
  for(int r = 1; r < (resX/step); r = r + 1){
    for(int c = 1; c < (resY/step); c = c + 1){
      float hyp = sqrt(sq(mouseY - (c*step)) + sq(mouseX - (r*step)));
      float lilstp = step/tiers;
      
      for(int l = 1; l <= tiers; l = l + 1){
        if (hyp < (l * inc * step)){
          ellipse((r*step),(c*step),(step - (lilstp * (l - 1))),(step - (lilstp * (l - 1))));
        }
      }
      if (hyp > (2 * tiers)){
        ellipse((r*step),(c*step),1,1);
      }
      
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
