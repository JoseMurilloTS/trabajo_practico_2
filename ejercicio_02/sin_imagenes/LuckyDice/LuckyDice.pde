private Tablero tablero;
GameObject[] objetos = new GameObject[20]; // arreglo para almacenar los dados
private int indiceActual = 0; // idice para almacenar los dados

public void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  
  tablero = new Tablero(width/2, height/2); // crea el tablero en el centro
}

public void draw() {
  background(#FFFFFF);
  tablero.mostrar(); // Mostrar el tablero
  
  for (int i = 0; i < indiceActual; i++) {
    if (objetos[i] != null) {
      objetos[i].mostrar(); // mostrar todos los dados almacenados
    }
  }
}

public void keyPressed() {
  if (key == ENTER) {
    int numeroAleatorio = (int)random(1, 7);
    Dado dado = new Dado(numeroAleatorio, width/2, height/2);
    objetos[indiceActual] = dado; // almacenar el dado en el arreglo
    indiceActual++;
  }
}
