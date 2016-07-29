
PVector location;
PVector velocity;

void setup() {
  size(500,500);
  location = new PVector(100,100);
  velocity = new PVector(3.5,2.5);
}

void draw() {
  background(255);
  location.add(velocity);

  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }

  strokeWeight(2);
  fill(127);
  ellipse(location.x,location.y,48,48);
}