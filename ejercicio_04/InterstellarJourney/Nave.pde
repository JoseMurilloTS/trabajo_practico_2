class Nave implements IDisplayable, IMoveable, IController {
  private PImage img;
  private float x, y;
  
  private Bala[] balas;
  private int cargador = 30;
  
  private int contador = 0;

  Nave(PImage img, float posicionX, float posicionY) {
    this.img = img;
    this.img.resize(96,96);
    this.x = posicionX;
    this.y = posicionY;
    
    balas = new Bala[cargador]; //inicia el cargador
  }

  public void display() {
    image(img, x, y);
    
    for (int i = 0; i<cargador; i++) {
      if (balas[i] != null) {
        balas[i].display();
      }
    }
  }

  public void mover() {
    if (keyPressed) {
      if (key == 'a' || key == 'A') {
        this.x -= 5;
      } else if (key == 'd' || key == 'D') {
        this.x += 5;
      }
    }
    x = constrain(x, img.width/2, width - img.width/2); //mantiene a la nave en el lienzo
  }

  public void readCommand() {
    if (keyPressed && key == ' ') {
      disparar();
    }
    for (int i = 0; i < cargador; i++) {
      if (this.balas[i] != null) {
        this.balas[i].mover();
        if (this.balas[i].y < 0) {
          this.balas[i] = null; //destrucción de las balas
        }
      }
    }
  }
  
  public void disparar() {
    //dispara las balas del cargador
    for (int i = 0; i < cargador; i++) {
      if (balas[i] == null) {
        this.balas[i] = new Bala(loadImage("bala.png"), x + img.width / 2, y);
        
        this.contador++; //contador de balas disparadas
        println("Cantidad de balas disparadas: " + this.contador);

        break;
      }
    }
  }
}
