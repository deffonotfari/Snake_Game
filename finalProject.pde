Snake snake;
PVector direction = new PVector(0,0);
int speed = 20;

void setup(){
  size(500,500);
  //initialising snake
  snake = new Snake();
}

void draw(){
  background(255);
  
  //calling the snake t be displayed
  snake.display();
  
  //u[dating snake
  if ((frameCount % speed) == 0){    
    snake.update();
  }
}

//movement of snake
void keyPressed(){
  if(key == CODED){
    if (keyCode == LEFT){
      direction = new PVector (-1,0); //goes left
    }
    
    if(keyCode == RIGHT){
      direction = new PVector (1,0); //goes right
    }
    
    if (keyCode == UP){
      direction = new PVector (0,-1); //goes up
    }
    
    if(keyCode == DOWN){
      direction = new PVector (0,1); //goes down
    }
  }
}
