class Dado extends GameObject {
  int numero;
  PImage imagen;
  
  Dado(int numero, int x, int y) {
    super(x, y);
    this.numero = numero;
  }
  
  public void mostrar() {
    //cargar la imagen que corresponde a cada dado
    imagen = loadImage("dado" + numero + ".png");
    
    imageMode(CENTER);
    imagen.resize(175,175);
    image(imagen, x, y);
  }
}
