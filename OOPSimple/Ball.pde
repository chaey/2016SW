class Ball {

  float x;       // x location of square 
  float y;       // y location of square 
  float speed;   // speed of square 
  float w;       // size

  // Ball constuctor
  Ball(float tempX, float tempY, float tempW) {
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 5;
  }


  void display() {
    // Display the square 
    fill(175); 
    stroke(0); 
    ellipse(x,y,w,w); 
  }

  void update() {
    // Add speed to location
    y = y + speed; 

    speed = speed + gravity;
    
    // If square reaches the bottom 
    // Reverse speed 
    if (y > height) { 
      speed = speed * -0.95;  
    } 
  }
  
  void disappear() {
     x = width*width;
  }
}