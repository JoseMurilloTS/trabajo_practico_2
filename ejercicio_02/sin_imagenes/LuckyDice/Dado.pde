class Dado extends GameObject {
  private int numero;
  private float tamaño = 50;
  
  Dado(int numero, int x, int y) {
    super(x, y);
    this.numero = numero;
  }
  
  // constructor que genera un número aleatorio
  Dado(int x, int y) {
    super(x, y);
    this.numero = (int) random(1, 7);
  }
  
  public void mostrar() {
    fill(#685FF7);
    rectMode(CENTER);
    rect(x, y, tamaño, tamaño);
    fill(0);
    
    switch(numero) {
      case 1:
        ellipse(x, y, 10, 10);
        break;
      case 2:
        ellipse(x - 15, y - 15, 10, 10);
        ellipse(x + 15, y + 15, 10, 10);
        break;
      case 3:
        ellipse(x - 15, y - 15, 10, 10);
        ellipse(x, y, 10, 10);
        ellipse(x + 15, y + 15, 10, 10);
        break;
      case 4:
        ellipse(x - 15, y - 15, 10, 10);
        ellipse(x + 15, y - 15, 10, 10);
        ellipse(x - 15, y + 15, 10, 10);
        ellipse(x + 15, y + 15, 10, 10);
        break;
      case 5:
        ellipse(x - 15, y - 15, 10, 10);
        ellipse(x + 15, y - 15, 10, 10);
        ellipse(x, y, 10, 10);
        ellipse(x - 15, y + 15, 10, 10);
        ellipse(x + 15, y + 15, 10, 10);
        break;
      case 6:
        ellipse(x - 15, y - 15, 10, 10);
        ellipse(x + 15, y - 15, 10, 10);
        ellipse(x - 15, y, 10, 10);
        ellipse(x + 15, y, 10, 10);
        ellipse(x - 15, y + 15, 10, 10);
        ellipse(x + 15, y + 15, 10, 10);
        break;
    }
  }
}
