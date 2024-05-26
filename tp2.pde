// Tp 2, alumna Martina Sosa 92541/2
// Prof. David Bedoian, com 3.

PImage img1, img2, img3, img4, img5; // pantallas
PFont Fuente;

int posX;
int posY;
int estado;
int contador;

// textos
String texto = "Oráculo generativo";
String texto1 = "Esta máquina consta\nde dos placas para\napoyar las manos y\n una pantalla central \nen donde aparecen predicciones\nal azar un tanto abstractas";
String texto2 = "Se activa mediante la colocación de ambas manos del individuo sobre las dos placas, las cuales son detectadas por sensores infrarrojos al hacer contacto con las mismas.";
String texto3 = "Luego, en la pantalla central aparece un texto formado por palabras al azar que combina el software desarrollado por su creador, formando así distintas frases en formas de predicción.";
String texto4 = "Estas palabras fueron cargadas previamente en una base de datos, en la que incluyó textos de filosofía y literatura para que la obra tenga enigmas y misterio y deje esa incertidumbre al espectador...";
String texto5 = "¿Quién habla? ¿El creador, la máquina, o el propio destino?";

int movimiento;

void setup() {
  size(640, 480);

  // fondos
  img1 = loadImage("pantalla 1.png");
  img2 = loadImage("pantalla 2.jpg");
  img3 = loadImage("pantalla 3.jpg");
  img4 = loadImage("pantalla 4.png");
  img5 = loadImage("presentacion.png");
  posX = height / 2; 
  posY = 0;
  estado = 1;
  contador = 0;

  // fuentes
  Fuente = loadFont("BellMTBold-32.vlw");
  textFont(Fuente);
}

void draw() {
  background(255);

  // primera pantalla
  if (estado == 1) {
    image(img5, -50, 0); 
    textSize(32);
    fill(255); // Color del texto
    textAlign(CENTER, CENTER); 
    text("Oráculo generativo\nAutor de la obra: Mario Guzman", width / 2, posX);
    posX -= 1; 

    contador++;
    if (contador >= 650) {
      estado++;
      contador = 0;
    }
  } else if (estado == 2) {
    image(img1, 0, 0, width, height); 
    textSize(20);
    fill(0); // Color del texto
    textAlign(LEFT, TOP); 
    text(texto1, 10, 10, width - 20, height - 20);
    contador++;
    if (contador >= 650) {
      estado++;
      contador = 0;
    }
  
  } 
}
