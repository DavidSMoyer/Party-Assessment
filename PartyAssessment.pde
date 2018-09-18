float confetti1Y = 0; // The Y position of the confetti.
float confetti2Y = -50;
float confetti3Y = -100;
float confetti4Y = -150;
float confetti5Y = -200;
float confetti6Y = -250;
float confetti7Y = -300;

int backgroundChangeDelay = 0; // Delay between color changes.
int presents = 0; // Amount of presents.

float red = random(256); // Color variables.
float blue = random(256);
float green = random(256);
float red2 = random(256);
float blue2 = random(256);
float green2 = random(256);

float presentX = 0; // Present settings.
float presentY = 0;
float presentSize = 0;

void setup() {
  size(800,800); // Sets size of the window.
}

void draw() {
  background(red,green,blue); // Redraws the background.
  backgroundChangeDelay ++; // Changes the delay counter.
  if (backgroundChangeDelay >= 30) { // If the delay counter is greater than 30 then...
    backgroundChangeDelay = 0; //... Reset delay counter.
    green = random(256); // Set text/background color to a random number.
    red = random(256);
    blue = random(256);
    red2 = random(256);
    blue2 = random(256);
    green2 = random(256);
  }
  
  confetti1Y = confetti1Y + 3; // Change confetti Y position by three.
  confetti2Y = confetti2Y + 3;
  confetti3Y = confetti3Y + 3;
  confetti4Y = confetti4Y + 3;
  confetti5Y = confetti5Y + 3;
  confetti6Y = confetti6Y + 3;
  confetti7Y = confetti7Y + 3;
  
  textAlign(CENTER); // Displays party text and presents text.
  textSize(50);
  fill(red2,green2,blue2);
  text("SWEET RAVE PARTY!",400,400);
  textSize(30);
  text("Presents: " + presents,400,450);
    
  ellipseMode(CENTER); // Confetti shapes.
  rectMode(CENTER);
  fill(50,200,200);
  ellipse(100,confetti1Y,30,30);
  
  fill(200,200,50);
  rect(700,confetti2Y,30,30);
  
  fill(200,50,200);
  triangle(280,confetti3Y,320,confetti3Y,300,confetti3Y-30);
  
  fill(50,50,200);
  ellipse(200,confetti4Y,30,30);
  
  fill(50,200,50);
  rect(500,confetti5Y,30,30);
  
  fill(200,50,50);
  triangle(380,confetti6Y,420,confetti6Y,400,confetti6Y-30);
  
  fill(200,200,200);
  ellipse(600,confetti7Y,30,30);
  
  if (confetti1Y > 850) { // Resets confetti Y position if off the screen.
    confetti1Y = -50;
  }
  if (confetti2Y > 850) {
    confetti2Y = -50;
  }
  if (confetti3Y > 850) {
    confetti3Y = -50;
  }
  if (confetti4Y > 850) {
    confetti4Y = -50;
  }
  if (confetti5Y > 850) {
    confetti5Y = -50;
  }
  if (confetti6Y > 850) {
    confetti6Y = -50;
  }
  if (confetti7Y > 850) {
    confetti7Y = -50;
  }
  
  if (presentSize > 0) { // Every click creates a present.
    fill(0,0,255);
    rect(presentX,presentY,presentSize,presentSize);
    fill(255,0,255);
    rect(presentX,presentY,presentSize,presentSize/4);
    rect(presentX,presentY,presentSize/4,presentSize);
    presentSize --;
  }
  
  if (presents > 19 & presents < 50) { // Secret messages.
    fill(0,255,255);
    text("I'm not giving you a secret.",400,500);
  }
  if (presents > 49 & presents < 100) {
    fill(0,255,255);
    text("You're wasting both your time and mine.",400,500);
  }
  if (presents > 99 & presents < 150) {
    fill(0,255,255);
    text("Seriously. Stop it.",400,500);
  }
  if (presents > 149 & presents < 250) {
    fill(255,0,0);
    text("Now.",400,500);
  }
  if (presents > 249 & presents < 300) {
    fill(0,255,255);
    text("You're determined. I'll give you that.",400,500);
}
if (presents > 299 & presents < 310) {
   fill(0,255,255);
   text("*Sigh*",400,500);
}
if (presents > 309 & presents < 320) {
   fill(0,255,255);
   text("Just take the secret.",400,500);
}
if (presents > 319 & presents < 330) {
   fill(255,0,0);
   text("THE BLUESCREEN OF DEATH!",400,500);
}
if (presents > 329) { // Blue screen of death.
    fill(0,0,255);
    rectMode(CORNERS);
    rect(0,0,800,800);
    fill(255);
    text("BLUE SCREEN OF DEATH. CANNOT PROCEED FURTHUR.",400,400);
}
}

void mouseClicked() { // If the mouse is clicked then...
  presentX = mouseX; // Set present X and Y to the mouse cursor.
  presentY = mouseY;
  presentSize = 50; // Resets present size.
  presents ++; // Adds a present.
}
