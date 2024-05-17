class Tortuga {
  private float x, y;
  private PImage imagen;
  
  Tortuga(float x, float y,  PImage imagen) {
    this.x = x;
    this.y = y;
    this.imagen = imagen;
    this.imagen.resize(64, 64);
  }
  
  public void mover(float direccionX) {
    x += direccionX;
  }
  
  public void display() {
    image(imagen, x, y);
  }
}
