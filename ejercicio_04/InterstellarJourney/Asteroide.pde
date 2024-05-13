class Asteroide implements IDisplayable, IMoveable {
  private PImage img;
  private float x, y;

  Asteroide(PImage img, float posicionX, float posicionY) {
    this.img = img;
    this.img.resize(128,128);
    this.x = posicionX;
    this.y = posicionY;
  }

  public void display() {
    image(img, x, y);
  }

  public void mover() {
  }
}
