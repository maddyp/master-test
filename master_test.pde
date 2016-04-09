Class FSM;
FSM book;
PImage castle;
PImage car;
PImage house;


State carState = new State(this, "enterCar", "doCar", "exitCar");
State castleState = new State(this, "enterCastle", "doCastle", "exitCastle");
State houseState = new State(this, "enterHouse", "doHouse", "exitHouse");
State natureState = new State(this, "enterNature", "doNature", "exitNature");
State racetrackState = new State(this, "enterRacetrack", "doRacetrack", "exitRacetrack");
State springState = new State(this, "enterSpring", "doSpring", "exitSpring");
State winterState = new State(this, "enterWinterState", "doWinter", "exitWinter");
State autumnState = new State(this, "enterAutumn", "doAutumn", "exitAutumn");
State summerState = new State(this, "enterSummer", "doSummer", "exitSummer");
State hauntedState = new State(this, "enterHaunted", "doHaunted", "exitHaunted");
State legoState = new State(this, "enterLego", "doLego", "exitLego");
State normalState = new State(this, "enterNormal", "doNormal", "exit Normal");


void setup() {
  size (1920,1080);
  book = new FSM(carState);}
             //car
             //castle
             //house

void draw() {
  book.update();
}

void enterCar() {
  println("enter car");
}

void doCar() {
car = loadImage("car.png");
image(car, 0, 0);
}

void exitCar() {
  println("exit Car");
}

void enterCastle() {
  println("enter castle");
}

void doCastle() {
castle = loadImage("castle.png");
image(castle, 0, 0);
}

void exitCastle() {
  println("exit castle");
}

void enterhouse() {
  println("enter castle");
}

void dohouse() {
house = loadImage("house.png");
image(house, 0, 0);
}

void exithouse() {
  println("exit castle");
}


void mousePressed() {
  if (book.isInState(carState)) {
    book.transitionTo(castleState);
  } 
  else if(book.isInState(castleState)) {
    book.transitionTo(carState);
  }
}
