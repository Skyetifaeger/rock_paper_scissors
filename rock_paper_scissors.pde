String answer = "non";
String computer = "null";
int Wins = 0;
int Losses = 0;

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
  if (key == 'f') {
    make();
    text("Wins: ", Wins, 100, 700);
  }
  if(keyPressed == true) {
    make();
    Array();
    delay(100);
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
    }
    if (computer == "rock" && answer == "scissors") {
      text("Congrats, you win", 200, 450);
    }
    if (computer == "paper" && answer == "scissos") {
      text("Congrats, you win", 200, 450);
    }
    if (computer == "scissors" && answer == "rock") {
      text("Congrats, you win", 200, 450);
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
