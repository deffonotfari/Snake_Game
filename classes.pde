class Snake{
  //defining values
  PVector position;
  int size = 40;
  int xPos,yPos;
  ArrayList<PVector> body = new ArrayList<PVector>();
  int len = 1; 
  PVector food;
  int score = 0;
  
  //setting values for snake
  Snake(){
    xPos = width/size;
    yPos = height/size;
    position = new PVector(xPos/2, yPos/2);
    len = 5;
    food = new PVector(int(random(xPos)), int(random(yPos)));
  }
  
  //displaying the snake:
  void display(){
    
    fill(0);
    textSize(20);
    text("Score: "+score, 10, 20);
    
    drawSnake();
    drawFood();
  }
  
  //drawing the snake
  void drawSnake(){
      fill(#353D2F);
      rect(position.x * size, position.y * size, size, size);
      
      for (int i=0; i<body.size(); i++){
        rect(body.get(i).x *size, body.get(i).y *size, size, size);
      }
  }
  
  //drawing food
  void drawFood(){
    fill(255,0,0);
    noStroke();
    rect(food.x * size, food.y * size, size, size);
  }
  
  void newFood(){
    food = new PVector(int(random(xPos)), int(random(yPos)));
  }
  
  void reset(){
      speed = 20;
      len = 5;
      position = new PVector(xPos/2, yPos/2);
      direction = new PVector(0,0);
      newFood();
      body = new ArrayList<PVector>();
      score = 0;
  }
  
  //update continuous moving
  void update(){
    if(direction.x != 0 || direction.y != 0){
      //print("Adding new");
      body.add(new PVector(position.x, position.y));
    }
  
    while (body.size() > len){
      body.remove(0);
    }
      
    position.add(direction);
      
    if (position.x == food.x && position.y == food.y){
      newFood();
      len = len + 1;
      speed = constrain(speed - 1, 0, 20);
      score = score + 1;
    }
    
    for (int i = 0; i<body.size(); i++){
      if (position.x == body.get(i).x && position.y == body.get(i).y){
        reset();
      }
    }
      
    if (position.x < 0){ 
      position.x = xPos - 1;
    }
    
    if (position.x > xPos){ 
      position.x = 0;
    }
    
    if (position.y < 0){ 
      position.y = yPos - 1;
    }
    
    if (position.y > yPos){ 
      position.y = 0;
    }
  }
}
