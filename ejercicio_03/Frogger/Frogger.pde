private Tablero tablero;
private Jugador jugador;
private Rana rana;
private Tortuga tortuga;
private Tronco tronco;

public void setup() {
  size(700, 700);
  
  tablero = new Tablero();
  jugador = new Jugador(width/2, height, 20);
  rana = new Rana(width/2, 120, 20);
  tortuga = new Tortuga(width, height/4, 20);
  tronco = new Tronco(0, height/3, 60, 20);
}

public void draw() {
  tablero.display();
  
  jugador.mover(0, -1);
  jugador.display();
  
  rana.display();
  
  tortuga.mover(-1);
  tortuga.display();
  
  tronco.mover(1);
  tronco.display();
}
