class Enemigo implements IDisplayable, IMoveable {
  private PImage img;
  private float x, y;

  Enemigo(PImage img, float posicionX, float posicionY) {
    this.img = img;
    this.img.resize(64,64);
    this.x = posicionX;
    this.y = posicionY;
  }

  public void display() {
    image(img, x, y);
  }

  public void mover() {
  }
}
