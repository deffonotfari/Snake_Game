Snake snake1;
PVector food;

void setup(){
  size(400,400);
  
  //initiation:
  snake1 = new Snake();
  
  //constructing:
  snake1.c = 0;
  food(); 
}

void draw(){
  background(255);
  
  snake1.display();
  
  snake1.movement();
}

void food(){
  float x = random(5,width/20);
  float y = random(5,height/20);
  
  food = new PVector(x,y);
}
