void setup() {
       size(255*16, 255*16);
}

void draw() {
       background(floor(mouseX/16), floor(mouseY/16), (mouseX%16)*10 + (mouseY%16) - 1);
}
