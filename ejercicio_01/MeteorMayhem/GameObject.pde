abstract class GameObject {
  protected PVector posicion; //atributo protegido "posición"
  protected PImage imagen; //atributo protegido "imagen"
  
  GameObject(float x, float y, PImage img) {
    this.posicion = new PVector(x, y);
    this.imagen = img;
  }

abstract void display(); //metodo abstracto "display()"
abstract void mover(); //metodo abstracto "mover()"
}
