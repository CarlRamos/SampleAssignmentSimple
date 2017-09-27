//Carl Lawrence Ramos
//GOAL: make a 'traffic light' simulator. For now, just have the light 
// changing according to time. You may want to investigate the millis()
// function at processing.org/reference.
float timeToWait;
int state;
float m = millis();
void setup() {
  size(800, 800);
  state = 1;
  timeToWait =3000;
}

void draw() {
  background(255);
  drawOutlineOfLights();
}

void drawOutlineOfLights() {
  //box
  rectMode(CENTER);
  fill(0);
  rect(width/2, height/2, 75, 200, 10);
  
  //neutral lights
  
  fill(100, 0, 0);
  ellipse(width/2, height/2 - 65, 50, 50); //top
  
  fill (100, 100, 0);
  ellipse(width/2, height/2, 50, 50); //middle
  
  fill (0, 100, 0);
  ellipse(width/2, height/2 + 65, 50, 50); //bottom
  
  //make the light's lit up
  if (state == 1 ){
    fill(255, 0, 0);
    ellipse(width/2, height/2 - 65, 50, 50); //top
    if (millis() >= timeToWait){
      timeToWait = timeToWait + 3000;
      state =2;}  
  }else if (state == 2){
    fill (255, 255, 0);
    ellipse(width/2, height/2, 50, 50); //middle
    if (millis() >= timeToWait){
      timeToWait = timeToWait + 3000;
      state = 3;}
  }else if (state == 3){
    fill (0, 255, 0);
    ellipse(width/2, height/2 + 65, 50, 50); //bottom
    if (millis() >= timeToWait){
      timeToWait = timeToWait + 3000;
      state = 1;}
}
}