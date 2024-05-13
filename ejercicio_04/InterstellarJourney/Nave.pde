class Nave implements IDisplayable, IMoveable, IController {
  private PImage img;
  private float x, y;

  Nave(PImage img, float posicionX, float posicionY) {
    this.img = img;
    this.img.resize(96,96);
    this.x = posicionX;
    this.y = posicionY;
  }

  public void display() {
    image(img, x, y);
  }

  public void mover() {
  }

  public void readCommand() {
  }
}
