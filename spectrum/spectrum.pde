int res = 1500;
int steps = 28;     // max rows is 28 
Table table;


void setup() {
  size(res, floor(res/(1920/1080)));
  
  table = loadTable("colors.csv");

  for(int r = 0; r < (steps+1); r = r + 1){
    fill(table.getInt(r,0),table.getInt(r,1),table.getInt(r,2));
    stroke(table.getInt(r,0),table.getInt(r,1),table.getInt(r,2));
    rect(r*(floor(res/steps)),0,floor(res/20),floor(res/1.5));
  }
}


