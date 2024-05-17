class Tronco {
  private float x, y;
  private PImage imagen;
  
  Tronco(float x, float y, PImage imagen) {
    this.x = x;
    this.y = y;
    this.imagen = imagen;
    this.imagen.resize(128, 128);
  }
  
  public void mover(float direccionX) {
    x += direccionX;
  }
  
  public void display() {
    image(imagen, x, y);
  }
}
