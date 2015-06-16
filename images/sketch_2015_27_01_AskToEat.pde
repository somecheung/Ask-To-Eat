PFont f;
String question =  "Do you want to eat?";
String usualResponse = "no";
String crazyResponse = "it's 1AM! are you crazy?";
String angryResponse = "no! stop asking";
String unusualResponse = "sure";
int i = 0;
boolean white = false;

int savedTime;
int totalTime = 5000;
int totalTime2 = 7000;
int totalTime3 = 9000;
int totalTime4 = 2000;

void setup() {
  size(1024, 768);
  background(255);
  f = createFont("Gill Sans", 36, true);
  frameRate(1);
  savedTime = millis();
}

void draw() {
  int passedTime = millis() - savedTime;

    background(255);
    if (i % 2 == 0) {
    println(question);
    textFont(f, 36);
    fill(0);
    textAlign(CENTER);
    text(question, width/2, height/2);
  }

if((passedTime> totalTime4)&&(passedTime<totalTime)){
  println(crazyResponse);
  textFont(f,36);
  fill(0);
  textAlign(CENTER);
  text(crazyResponse, width/2, 2*height/3);
}

  if ( (passedTime > totalTime) && (passedTime < totalTime2) ) {
    // background(0,0,255);
    println(usualResponse);
    textFont(f, 36);
    fill(0);
    textAlign(CENTER);
    text(usualResponse, width/2, 2*height/3);
  } 
  else if ((passedTime > totalTime2) && (passedTime<totalTime3)) {
    println(angryResponse);
    textFont(f, 36);
    fill(0);
    textAlign(CENTER);
    text(angryResponse, width/2, 2*height/3);
  }    
  /*  
   println(unusualResponse);
   textFont(f,36);
   fill(0);
   text(unusualResponse, 0, 2*height/3);
   */
  if (passedTime > totalTime) {
    i=i+1;
  }
  println(passedTime);

  if (i == 10) {
    println(unusualResponse);
    textFont(f, 36);
    fill(0);
    textAlign(CENTER);
    text(unusualResponse, width/2, 2*height/3);
    i = 0;
    savedTime = millis();
  }
  println(i);

  //println(frameCount);
}

