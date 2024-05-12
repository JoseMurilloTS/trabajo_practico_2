class Asteroide extends GameObject {
  Asteroide(float x, float y, PImage img) {
    super(x, y, img);
  }
  
  public void display() {
    image(imagen, posicion.x, posicion.y);
  }
  
  public void mover() {
    float velocidad = 3;
    
    this.posicion.x += random(-velocidad, velocidad);
    this.posicion.y += random(-velocidad, velocidad);
  }
}
