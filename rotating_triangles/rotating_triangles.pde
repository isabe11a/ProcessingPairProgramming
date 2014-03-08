int res = 750;
float inc = res/255;

void setup() {
       size(res, res);
}

void draw() {
       background(floor(mouseX/inc), floor(mouseY/inc), (mouseX%inc)*inc + (mouseY%inc) - 1);
       stroke(abs(floor(mouseX/inc)-255), abs(floor(mouseY/inc)-255), abs((mouseX%inc)*inc + (mouseY%inc) - 255));
       
       float x = mouseX-(res/2);
       float y = (res/2)-mouseY;

       float x_primeA = (3*y)/sqrt(3);
       float y_primeA = (3*x)/sqrt(3);
       float x_primeC = x*3;
       float y_primeC = y*3;
       
       float Ax = mouseX - x_primeA;
       float Ay = mouseY - y_primeA;
       float Bx = mouseX + x_primeA;
       float By = mouseY + y_primeA;
       float Cx = mouseX - x_primeC;
       float Cy = mouseY + y_primeC;
 
       line(Ax, Ay, Cx, Cy);
       line(Bx, By, Ax, Ay);
       line(Cx, Cy, Bx, By);
}
