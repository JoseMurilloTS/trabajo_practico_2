class Tronco {
  private float x, y;
  private float ancho, largo;
  
  Tronco(float x, float y, float ancho, float largo) {
    this.x = x;
    this.y = y;
    this.ancho = ancho;
    this.largo = largo;
  }
  
  public void mover(float direccionX) {
    x += direccionX;
  }
  
  public void display() {
    fill(#833A3A);
    rect(x, y, ancho, largo);
  }
}
