class Bala implements IDisplayable, IMoveable {
  private PImage img;
  private float x, y;

  Bala(PImage img, float posicionX, float posicionY) {
    this.img = img;
    this.img.resize(24,24);
    this.x = posicionX;
    this.y = posicionY;
  }

  public void display() {
    image(img, x, y);
  }

  public void mover() {
    this.y -= 5; //mueve la bala hacia arriba
  }
}
