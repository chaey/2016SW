

int num;

void setup() {
  size(500,500);
 
}

void draw() {
  
  int r = fact(num);
  num++;
  ellipse(width/2, height/2, r, r);
  println(r);
  if (num > 5)
    noLoop();
  
  delay(500);
}

int fact(int n) {
  if (n  <=1)
    return 1;
  else
    return n*fact(n-1);
}