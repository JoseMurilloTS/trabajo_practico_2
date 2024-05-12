class Tablero extends GameObject {
  Tablero(int x, int y) {
    super(x, y);
  }
  
  public void mostrar() {
    //dibujar el tablero
    fill(#FFFFFF);
    rectMode(CENTER);
    rect(x, y, 250, 250);
    
    //dibujar el texto informativo
    fill(#000000);
    textSize(30);
    text("Dado", x, y-height/5);
    textSize(20);
    text("Presiona ENTER para lanzar el dado", x, y+height/4);
    text("Presiona ESPACIO para mostrar los números", x, y+height/5);
  }
}
