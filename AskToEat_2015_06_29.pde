PFont f;
boolean askToEat;
String question = "Do you want to eat?";

void setup() {
  size(1024, 768);
  background(255);
  f = createFont("DINAlternate-Bold-48", 36, true);
  frameRate(1);
}

void draw() {
  background(255);
  String [] response = { 
    "No.", "No, stop asking!", "It's 1AM! Are you crazy?"
  };
  int randomResponse = int(random(response.length));
  if (!askToEat ) {
    println(question);
    textFont(f, 36);
    fill(0);
    textAlign(CENTER);
    text(question, width/2, height/3);
    text(response[randomResponse], width/2, 2*height/3);
    askToEat = true;
    println("false");
  }

  if (askToEat) {
    println(question);
    textFont(f, 36);
    fill(0);
    textAlign(CENTER);
    text(question, width/2, height/3);
    text(response[randomResponse], width/2, 2*height/3);
    askToEat = false;
    println("true");
  }

}

