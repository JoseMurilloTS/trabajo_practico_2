class Rana {
  private float x, y;
  private PImage imagen;
  
  Rana(float x, float y, PImage imagen) {
    this.x = x;
    this.y = y;
    this.imagen = imagen;
    this.imagen.resize(64, 64);
  }
  
  public void display() {
    image(imagen, x, y);
  }
}
