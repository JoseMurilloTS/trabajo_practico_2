class Jugador {
  private float x, y;
  private PImage imagen;
  
  Jugador(float x, float y, PImage imagen) {
    this.x = x;
    this.y = y;
    this.imagen = imagen;
    this.imagen.resize(64, 64);
  }
  
  public void mover(float direccionX, float direccionY) {
    x += direccionX;
    y += direccionY;
  }
  
  public void display() {
    image(imagen, x, y);
  }
}
