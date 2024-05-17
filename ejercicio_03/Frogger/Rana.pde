class Rana {
  private float x, y;
  private float tamaño;
  
  Rana(float x, float y, float tamaño) {
    this.x = x;
    this.y = y;
    this.tamaño = tamaño;
  }
  
  public void display() {
    fill(#0CC930);
    ellipse(x, y, tamaño, tamaño);
  }
}
