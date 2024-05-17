class Vehiculo {
  private PVector posicion;
  private PVector velocidad;
  private PImage imagen;

  Vehiculo(PVector posicion, PVector velocidad, PImage imagen) {
    this.posicion = posicion;
    this.velocidad = velocidad;
    this.imagen = imagen;
  }

  public void mover() {
    posicion.add(velocidad);
  }

  public void display() {
    image(imagen, posicion.x, posicion.y);
  }

  public PVector getPosicion() {
    return posicion;
  }

  public void setPosicion(PVector posicion) {
    this.posicion = posicion;
  }
}
