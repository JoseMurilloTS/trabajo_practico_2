private Tablero tablero;

public void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  
  tablero = new Tablero(width/2, height/2); // crea el tablero en el centro
}

public void draw() {
  background(255);
  
  tablero.mostrar();
}
