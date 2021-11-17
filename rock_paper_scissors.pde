// use space to reset visuals
String answer = "null";
String computer = "null";
int Wins = 0;
int Losses = 0;
PImage rock;
PImage paper;
PImage scissors;

void setup() {
  rock = loadImage("rock.png");
  paper = loadImage("paper.png");
  scissors = loadImage("scissors.png");
  String[] choices = new String[3];
  choices[0] = "rock";
  choices[1] = "scissors";
  choices[2] = "paper";
  size(900, 900);
  make();
  Array();
}

void draw () {
  if (keyPressed == true) {
    make();
    delay(100);
    if (key == 'a') {
      answer = "rock";
      text("Your answer:", 200, 400);
      text(answer, 500, 400);
      image(rock, 600, 100, width/4, height/4);
      Array();
    }
    if (key == 's') {
      answer = "scissors";
      text("Your answer:", 200, 400);
      text(answer, 500, 400);
      image(scissors, 600, 100, width/4, height/4);
      Array();
    }
    if (key == 'd') {
      answer = "paper";
      text("Your answer:", 200, 400);
      text(answer, 500, 400);
      image(paper, 600, 100, width/4, height/4);
      Array();
    }
    if (computer == answer) {
      text("TIE, try again", 200, 450);
      text(Wins, 400, 100);
      text(Losses, 400, 50);
    }
    if (computer == "rock" && answer == "paper") {
      text("Congrats, you win", 200, 450);
      text(Wins += 1, 400, 100);
      text(Losses, 400, 50);
    }
    if (computer == "paper" && answer == "scissors") {
      text("Congrats, you win", 200, 450);
      text(Wins += 1, 400, 100);
      text(Losses, 400, 50);
    }
    if (computer == "scissors" && answer == "rock") {
      text("Congrats, you win", 200, 450);
      text(Wins += 1, 400, 100);
      text(Losses, 400, 50);
    }
    if (computer == "rock" && answer == "scissors") {
      text("Oh no! You lost", 200, 450);
      text(Wins, 400, 100);
      text(Losses += 1, 400, 50);
    }
    if (computer == "paper" && answer == "rock") {
      text("Oh no! You lost", 200, 450);
      text(Wins, 400, 100);
      text(Losses += 1, 400, 50);
    }
    if (computer == "scissors" && answer == "paper") {
      text("Oh no! You lost", 200, 450);
      text(Wins, 400, 100);
      text(Losses += 1, 400, 50);
    }
  }
  if (key == ' ') {
    answer = "null";
    make();
    text(Wins, 400, 100);
    text(Losses, 400, 50);
  }
}

void make() {
  background(255);
  fill(0);
  textSize(50);
  text("What is your input?", 200, 150);
  text("space = reset", 200, 200);
  text("a = rock", 200, 250);
  text("s = scissors", 200, 300);
  text("d = paper", 200, 350);
  text("Wins:", 250, 100);
  text("Losses:", 250, 50);
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
