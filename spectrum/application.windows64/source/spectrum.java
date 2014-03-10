import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class spectrum extends PApplet {

int res = 1500;
int steps = 28;     // max rows is 28 
Table table;


public void setup() {
  size(res, floor(res/(1920/1080)));
  
  table = loadTable("colors.csv");

  for(int r = 0; r < (steps+1); r = r + 1){
    fill(table.getInt(r,0),table.getInt(r,1),table.getInt(r,2));
    stroke(table.getInt(r,0),table.getInt(r,1),table.getInt(r,2));
    rect(r*(floor(res/steps)),0,floor(res/20),floor(res/1.5f));
  }
}


  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "spectrum" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
