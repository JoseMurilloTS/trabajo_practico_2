class Tablero {
  private PImage fondo;
  
  Tablero() {
    fondo = loadImage("fondo.png");
    fondo.resize(700, 700);
  }
  
  public void display() {
    image(fondo, 0, 0);
  }
}
