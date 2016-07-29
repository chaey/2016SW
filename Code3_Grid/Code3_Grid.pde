
void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  for (int i = 0; i < width; i+=20)
    line(i, 0, i, height);
    
  for (int i = 0; i < height; i+=20)
    line(0, i, width, i);
  
}