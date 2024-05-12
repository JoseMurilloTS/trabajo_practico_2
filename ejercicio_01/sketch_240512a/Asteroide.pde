class Asteroide extends GameObject {
  Asteroide(float x, float y, PImage img) {
    super(x, y, img);
  }
  
  public void display() {
    image(imagen, posicion.x, posicion.y);
  }
  
  public void mover() {
  }
}
