String answer = "non";
String computer = "null";

void setup() {
  String[] choices = new String[3];
  choices[0] = "rock";
  choices[1] = "scissors";
  choices[2] = "paper";
  size(900, 900);
  make();
  Array();
}
void draw () {
  if(keyPressed == true) {
    if (key == 'a') {
      answer = "rock";
      text(answer, 200, 400);
    }
    if (key == 's') {
      answer = "scissors";
      text(answer, 200, 400);
    }
    if (key == 'd') {
      answer = "paper";
      text(answer, 200, 400);
    }
    if (computer == answer) {
      text("TIE, try again", 200, 450);
      delay(3000);
      make();
    }
  }
}

void make() {
  background(255);
  fill(0);
  textSize(50);
  text("What is your input?", 200, 200);
  text("a = rock", 200, 250);
  text("s = scissors", 200, 300);
  text("d = paper", 200, 350);
}

void Array() {
  String[] choices = new String[3];
  choices[0] = "rock";
  choices[1] = "scissors";
  choices[2] = "paper";
  int rand = (int)random(choices.length);
  if (rand == 0) {
    computer = "rock";
  }
  if (rand == 1) {
    computer = "scissors";
  }
  if (rand == 2) {
    computer = "paper";
  }
}
