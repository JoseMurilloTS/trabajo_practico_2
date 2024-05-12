Shooter shooter; 
Asteroide asteroide;
Joypad joypad;

public void setup() {
  size(800, 800);
  imageMode(CENTER);
  
  //inicialización de las clases
  joypad = new Joypad();
  shooter = new Shooter(width/2, height-64, loadImage("shooter.png"));
  asteroide = new Asteroide(random(width), random(height/2), loadImage("asteroide.png"));
}

public void draw() {
  background(#000000);
  
  shooter.mover();
  shooter.display();
  
  asteroide.mover();
  asteroide.display();
  
  //implementación del hud indicando las vidas
  fill(#FFFFFF);
  textAlign(RIGHT);
  text("Vidas: " + shooter.getVidas(), width-20, 20);
}

public void keyPressed() {
  joypad.keyPressed();
}

public void keyReleased() {
  joypad.keyReleased();
}
