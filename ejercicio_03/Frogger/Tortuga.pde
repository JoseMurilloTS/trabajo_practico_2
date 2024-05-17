class Tortuga {
  private float x, y;
  private float tamaño;
  
  Tortuga(float x, float y, float tamaño) {
    this.x = x;
    this.y = y;
    this.tamaño = tamaño;
  }
  
  public void mover(float direccionX) {
    x += direccionX;
  }
  
  public void display() {
    fill(#266C33);
    ellipse(x, y, tamaño, tamaño);
  }
}
