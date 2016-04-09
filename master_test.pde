
Class FSM;
FSM book;
                                //car
                                //house
                                //castle


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
                               //HELLO JOEL will i have to put everything for my car state in here, ie, loading movie files or can i do this in the individual states????
                            //castle
                            //house
 
void draw() {
  book.update();
}

void enterCarState() {
  println("enter car");
}

void doCarState() {
  background(255, 100, 0);
  println("doing car");
}

void exitCarState() {
  println("exit Car");
}

void enterCastleState() {
  println("enter castle");
}

void doCastleState() {
  background(0, 255, 36);
    println("doing castle");
}

void exitCastleState() {
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