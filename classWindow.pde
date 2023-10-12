class Snake{
  float x,y;
  color c;
  float vx,vy;
  
  
  Snake(){
    x = width/2;
    y = height/2;
    vx = -2;
    vy = -2;
  }
  
  
  //display snake
  void display(){
    fill(c);
    noStroke();
    rect(x,y,30,30);
  }
  
  //movement function for snake
  void movement(){
   if (keyCode == LEFT){
    x = x - 2.5; //change direction to left
    
    if (x <= -width){
    x = width;
    x = x + vx;
    }
    
  } else if (keyCode == RIGHT){
    x = x + 2.5; //change direction to  right
    
    if (x >= width){
    x = -width;
    x = x + vx;
    }
    
  } else if (keyCode == UP){
    y = y - 2.5; //moving up
    
    if (y <= -height){
    y = height;
    y = y + vy;
    }
    
  } else if (keyCode == DOWN){
    y = y + 2.5; //moving down
    
    if (y >= height){
    y = -height;
    y = y + vy;
    }
  }
  }
}
