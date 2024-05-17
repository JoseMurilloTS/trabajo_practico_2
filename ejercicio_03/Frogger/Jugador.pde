class Jugador {
  private float x, y;
  private float tamaño;
  
  Jugador(float x, float y, float tamaño) {
    this.x = x;
    this.y = y;
    this.tamaño = tamaño;
  }
  
  public void mover(float direccionX, float direccionY) {
    x += direccionX;
    y += direccionY;
  }
  
  public void display() {
    fill(#FF08FC);
    ellipse(x, y, tamaño, tamaño);
  }
}
