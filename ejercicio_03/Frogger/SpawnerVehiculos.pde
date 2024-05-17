class SpawnerVehiculos extends Spawner {
  private Vehiculo[] vehiculos;
  private int cantidadVehiculos;

  public SpawnerVehiculos(PVector posicion, int cantidadVehiculos) {
    super(posicion);
    this.cantidadVehiculos = cantidadVehiculos;
    vehiculos = new Vehiculo[cantidadVehiculos];
    generarVehiculos();
  }

  private void generarVehiculos() {
    for (int i = 0; i < cantidadVehiculos; i++) {
      //generar un vehículo en la calle
      float posX = random(width);
      float posY = random(375, 575);
      PVector posicion = new PVector(posX, posY);
      
      //darle una velocidad aleatoria
      float velX = random(1, 3);
      float velY = 0;
      PVector velocidad = new PVector(velX, velY);
      
      PImage imagen = loadImage("auto.png");
      imagen.resize(48, 48);
      
      Vehiculo vehiculo = new Vehiculo(posicion, velocidad, imagen);
      vehiculos[i] = vehiculo;
    }
  }

  public void visualizarVehiculos() {
    for (Vehiculo vehiculo : vehiculos) {
      vehiculo.display();
    }
  }

  public void mover(int width) {
    for (Vehiculo vehiculo : vehiculos) {
      vehiculo.mover();
      
      if (vehiculo.getPosicion().x > width) {
        vehiculo.setPosicion(new PVector(0, vehiculo.getPosicion().y));
      }
    }
  }
}
