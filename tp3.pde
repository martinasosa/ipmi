//https://youtu.be/3eTqbr7JBqs
/* tp3 Alumna: Martina Sosa 
 Com. 3 
 Prof. David Bedoian
 92541/2
 */

//nombramiento de variables
color DameUnColorAleatorio, DameUnColorAleatorio2, DameUnColorAleatorio3, ColorDeInicio; //variables que retornan un valor

PImage Ilusion;

float r, g, b, r2, g2, b2, r3, g3, b3; //variable para color



void setup() {

  size(800, 400);
  background(0);

  //imagen de la ilusion
  Ilusion = loadImage("ilusion.png"); //ya corregí el acento de la imágen que figuraba en comentarios de la entrega)
  image(Ilusion, 0, 0, 400, 400);//cambié la imagen del void draw al void setup


  //declaración de la variables
  DameUnColorAleatorio = color(r, g, b);
  DameUnColorAleatorio2 = color(r2, g2, b2);
  DameUnColorAleatorio3 = color(r3,g3,b3);
  ColorDeInicio = color(0);
 
}

void draw() {

  //ciclos for anidados
  for (int i = 400; i > 0; i -= 25) {
    push();
    strokeWeight(6);
    stroke(DameUnColorAleatorio2);
    ellipse(600, 200, i, i);
    pop();
  }

  for (int c = 180; c > 0; c -= 15) {
    push();
    strokeWeight(3);
    stroke(DameUnColorAleatorio3);
    ellipse(700, 270, c, c); //circulo fe la esquina inferior derecha
    ellipse(490, 80, c, c); //circulo de la esquina superior izquierda
    pop();
  }

  for (int k = 230; k > 0; k -= 15) {
    push();
    strokeWeight(3);
    stroke(DameUnColorAleatorio3);
    ellipse(600, 350, k, k);//circulo de abajo
    ellipse(680, 120, k, k);//circulo de arriba
    pop();
  }

  for (int u = 300; u > 0; u -= 22) {
    push();
    strokeWeight(4);
    stroke(DameUnColorAleatorio);
    ellipse(600, 200, u, u);//centro
    pop();
  }
}

void mouseDragged() {
  
  //color 1
  float r = random(0, 255); // Componente rojo
  float g = random(0, 255); // Componente verde
  float b = random(0, 255); // Componente azul
  
  //color 2
  float r2 = random(20, 190);
  float g2 = random(40, 255); 
  float b2 = random(70, 200);
  
  //color 3
  float r3 = random(20,200);
  float g3 = random(70,140);
  float b3 = random(0,200);

  DameUnColorAleatorio = color(r, g, b);
  DameUnColorAleatorio2 = color (r2, g2, b2);
  DameUnColorAleatorio3 = color (r3,g3,b3);
}

void keyPressed() {
  // Reiniciar colores al presionar la tecla 'r'
  if (key == 'r') {
    DameUnColorAleatorio = ColorDeInicio;
    DameUnColorAleatorio2 = ColorDeInicio;
    DameUnColorAleatorio3 = ColorDeInicio;//con esta función hago qu los bordes vuelvan al color inicial, en este caso negro
  }
  else {
    //Si presiono una tecla que no es R se muestra este mensaje debajo :o)
    println("Presiona la tecla R para reiniciar :)");
  }
  
}
