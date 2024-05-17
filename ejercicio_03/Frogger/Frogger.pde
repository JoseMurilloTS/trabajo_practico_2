private Tablero tablero;
private Jugador jugador;
private Rana rana;
private Tortuga tortuga;
private Tronco tronco;
private SpawnerVehiculos spawnerVehiculos;

void setup() {
  size(700, 700);
    
  tablero = new Tablero();
  jugador = new Jugador(width/2-32, height, loadImage("jugador.png"));
  rana = new Rana(width/2-34, 86, loadImage("rana.png"));
  tortuga = new Tortuga(width, height/4, loadImage("tortuga.png"));
  tronco = new Tronco(0, height/3, loadImage("tronco.png"));

  //crear el spawner de vehículos
  PVector posicionSpawner = new PVector(0, 0);
  int cantidadVehiculos = 10; //cantidad de vehículos que serán generados
  spawnerVehiculos = new SpawnerVehiculos(posicionSpawner, cantidadVehiculos);
}

void draw() {
  tablero.display();
  
  jugador.mover(0, -1);
  jugador.display();
  
  rana.display();
  
  tortuga.mover(-1);
  tortuga.display();
  
  tronco.mover(1);
  tronco.display();
  
  //generar, mostrar y mover los vehículos
  spawnerVehiculos.visualizarVehiculos();
  spawnerVehiculos.mover(width);
}
