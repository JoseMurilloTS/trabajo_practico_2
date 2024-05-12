class Shooter extends GameObject {
  int vidas;
  
  Shooter(float x, float y, PImage img) {
    super(x, y, img);
    
    vidas = 3; //iniciar con 3 vidas
  }
  
  public void display() {
    image(imagen, posicion.x, posicion.y);
  }
  
  public void mover() {
  }
  
  int getVidas() {
    return this.vidas;
  }
}
