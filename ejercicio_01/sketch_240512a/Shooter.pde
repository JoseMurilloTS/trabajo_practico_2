class Shooter extends GameObject {
  int vidas;
  Joypad joypad;
  
  Shooter(float x, float y, PImage img, Joypad joypad) {
    super(x, y, img);
    
    vidas = 3; //iniciar con 3 vidas
    this.joypad = joypad;
  }
  
  public void display() {
    image(imagen, posicion.x, posicion.y);
  }
  
  public void mover() {
    float velocidad = 5;
    
    if (joypad.upPressed) {
      this.posicion.y -= velocidad;
    }
    if (joypad.downPressed) {
      this.posicion.y += velocidad;
    }
    if (joypad.leftPressed) {
      this.posicion.x -= velocidad;
    }
    if (joypad.rightPressed) {
      this.posicion.x += velocidad;
    }
    
    //mantener el shooter dentro del lienzo
    this.posicion.x = constrain(this.posicion.x, imagen.width/2, width - imagen.width/2);
    this.posicion.y = constrain(this.posicion.y, imagen.height/2, height - imagen.height/2);
  }
  
  int getVidas() {
    return this.vidas;
  }
}
