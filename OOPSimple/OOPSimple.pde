// Two ball objects
Ball ball1;
Ball ball2;
Ball[] balls;
Catcher catcher;
// Global gravity variable
float gravity = 0.1;  

void setup() { 
  size(800,800); 
  smooth();
  
  // Create ball objects
  ball1 = new Ball(50,0,16);
  ball2 = new Ball(100,50,32);
  catcher = new Catcher(100);
  balls = new Ball[50];
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball(random(width), random(height), random(50));
  }
} 

void draw() { 
  background(255); 
  catcher.setLocation(mouseX, mouseY);
  catcher.display();
  
  // Display ball objects
  ball1.display();
  ball2.display();

  // Move ball objects
  ball1.update();
  ball2.update();
  
  for (int i = 0; i < balls.length; i++) {
    balls[i].display();
    balls[i].update();
    if (catcher.intersect(balls[i])) {
      balls[i].disappear();
    }
  }
  


} 