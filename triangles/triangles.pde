void setup() {
       size(765, 765);
       stroke(255,255,255);
}

void draw() {
       background(floor(mouseX/3), floor(mouseY/3), (mouseX%3)*3 + (mouseY%3) - 1);
       
       float x = mouseX-(765/2);
       float y = (765/2)-mouseY;
       float a = sqrt((x*x)+(y*y));
       
       float x_primeA = y/a;
       float y_primeA = x/a;
       float x_primeC = 2*sqrt(3)*x;
       float y_primeC = 2*sqrt(3)*y;
       
       float Ax = mouseX - x_primeA;
       float Ay = mouseY - y_primeA;
       float Bx = mouseX + x_primeA;
       float By = mouseY + y_primeA;
       float Cx = mouseX - x_primeC;
       float Cy = mouseY + y_primeC;
       
//       line(mouseX, (765/2)-2*(mouseX-765/2), mouseX, (765/2)+2*(mouseX-765/2));
//       line(mouseX-(mouseX-765/2)*(2*1.732), 765/2, mouseX, (765/2)-2*(mouseX-765/2));
//       line(mouseX-(mouseX-765/2)*(2*1.732), 765/2, mouseX, (765/2)+2*(mouseX-765/2));
       
       line(Ax, Ay, Ax, Ay);
       line(Bx, By, Bx, By,);
       line(Cx, Cy, Cx, Cy);
}
