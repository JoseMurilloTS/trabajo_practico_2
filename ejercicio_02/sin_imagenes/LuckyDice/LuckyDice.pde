private Tablero tablero;
private GameObject[] objetos = new GameObject[100]; // arreglo para almacenar los dados
private int indiceActual = 0; // indice para almacenar los dados
private int[] numeros = new int[20]; // arreglo para almacenar los números obtenidos

public void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  
  tablero = new Tablero(width/2, height/2);
}

public void draw() {
  background(#FFFFFF);
  tablero.mostrar();
  
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
    numeros[indiceActual] = numeroAleatorio; //almacenar el numero en el arreglo
    indiceActual++;
  } else if (key == ' ') {
    mostrarNumeros();
  }
}

//mostrar los numeros obtenidos en cuatro columnas
public void mostrarNumeros() {
  for (int i = 0; i < indiceActual; i++) {
    print(numeros[i] + "\t");
    if ((i + 1) % 4 == 0) {
      println();
    }
  }
  println();
}
