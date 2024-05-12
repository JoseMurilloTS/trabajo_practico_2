Shooter shooter; 
Asteroide asteroide;

public void setup() {
  size(800, 800);
  imageMode(CENTER);
  
  //creación de instancias de las clases
  shooter = new Shooter(width/2, height-64, loadImage("shooter.png"));
  asteroide = new Asteroide(random(width), random(height/2), loadImage("asteroide.png"));
}

public void draw() {
  background(0);
  
  shooter.mover();
  shooter.display();
  
  asteroide.mover();
  asteroide.display();
}
