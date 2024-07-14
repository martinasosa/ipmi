// Tp 2, alumna Martina Sosa 92541/2
// Prof. David Bedoian, com 3.


//variables
PImage img1, img2, img3, img4, img5; // pantallas
PFont Fuente;

int posX;
int posY;
int estado;
int contador;
int movimiento;

// textos
String texto = "Oráculo generativo";
String texto1 = "Esta máquina consta\nde dos placas para\napoyar las manos y\n una pantalla central \nen donde aparecen predicciones\nal azar un tanto abstractas";
String texto2 = "Se activa mediante la colocación de ambas manos \ndel individuo sobre las dos placas, las cuales son detectadas \npor sensores infrarrojos al hacer contacto con las mismas.";
String texto3 = "Luego, en la pantalla central aparece un texto formado por palabras al azar que combina el software desarrollado por su creador, formando así distintas frases en formas de predicción.";
String texto4 = "Estas palabras fueron cargadas previamente en una base de datos, en la que incluyó textos de filosofía y literatura para que la obra tenga enigmas y misterio y deje esa incertidumbre al espectador...";
String texto5 = "¿Quién habla? \n¿El creador, la máquina, o el propio destino?";



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
    fill(255); 
    textAlign(CENTER, CENTER); 
    text("Oráculo generativo\nAutor de la obra: Mario Guzman", width / 2, posX);
    posX -= 1; 

    contador++;
    if (contador >= 450) {
      estado++;
      posX = height; 
      contador = 0;
    }
  } else if (estado == 2) {
    // segunda pantalla
    image(img1, 0, 0, width, height); 
    textSize(20);
    fill(255); 
    textAlign(LEFT, TOP);
    text(texto1, width / 8, posX); 
    posX -= 1; 
    contador++;
    if (contador >= 450) {
      estado++;
      posX = height; 
      contador = 0;
    }
  } else if (estado == 3) {
    //pantalla 3
    image(img3, 0, 0, width, height); 
    textSize(20);
    fill(0); 
    textAlign(LEFT, TOP); 
    text(texto2, 10, posX, width - 20, height); 
    posX -= 1; 
    contador++; 
    if (contador >= 450) {
      estado++; 
      posX = height; 
      contador = 0; 
    }
  } else if (estado == 4) {
    //pantalla 4
    image(img4, 0, 0, width, height); 
    textSize(20);
    fill(0, 0, 200); 
    textAlign(CENTER, TOP); 
    text(texto3, 10, posX, width - 20, height); 
    posX -= 1; 
    contador++;
    if (contador >= 450) {
      estado++; 
      posX = height; 
      contador = 0; 
    }
} else if (estado == 5) {
    //pantalla 5
    image(img2, 0, 0, width, height); 
    textSize(20);
    fill(0); 
    textAlign(CENTER, TOP); 
    text(texto4, 10, posX, width - 20, height); 
    posX -= 1; 
    contador++;
    if (contador >= 450) {
      estado++; 
      posX = height; 
      contador = 0; 
    }
} if (estado == 6) {
  //pantalla 6
    image(img5, 0, 0, width, height);
    fill(255);
    textSize(25);
    textAlign(CENTER);
    text(texto5, width / 2, posX);
    posX -= 1;
    
    //forma del botón
     fill(200); 
    rect(width - 120, height - 60, 100, 40); 
      fill(0); 
      textSize(20);
      textAlign(CENTER, CENTER);
      text("Reiniciar", width - 70, height - 40); 
}

  
}
void mousePressed() {
  //función botón de reinicio
  if (estado == 6 && mouseX > width - 120 && mouseX < width - 20 &&
      mouseY > height - 60 && mouseY < height - 20) {
    estado = 1; 
    posX = height / 2; 
    }
}
