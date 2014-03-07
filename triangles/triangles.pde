void setup() {
       size(765, 765);
}

void draw() {
       background(floor(mouseX/3), floor(mouseY/3), (mouseX%3)*3 + (mouseY%3) - 1);
       stroke(255,255,255);
       line(mouseX, (765/2)-2*(mouseX-765/2), mouseX, (765/2)+2*(mouseX-765/2));
       line(mouseX-(mouseX-765/2)*(2*1.732), 765/2, mouseX, (765/2)-2*(mouseX-765/2));
       line(mouseX-(mouseX-765/2)*(2*1.732), 765/2, mouseX, (765/2)+2*(mouseX-765/2));
}
