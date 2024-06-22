/* tp3 Alumna: Martina Sosa 
 Com. 3 
 Prof. David Bedoian
 92541/2
 */

//variables
PImage Ilusion;


void setup () {
  size (800, 400);
  background(255);
  Ilusion = loadImage("ilusión.png");
  image(Ilusion, 0, 0, 400, 400);
}

void draw () {
  for (int i = 600; i>0; i -=25)
    for ( int c = 170; c>0; c -=15) 

    {
      strokeWeight(3);
      ellipse(700, 270, c, c); 
      ellipse(470, 80, c, c); 
      {
        push();
        strokeWeight(6);
        ellipse(600, 200, i, i);
        pop();// usé la función de push y pop para descartar los cambios del borde en las próximas figuras
        image(Ilusion, 0, 0, 400, 400);//puse la imágen en el void draw para superponer sobre los círculos del ciclo for y quede como un fondo
        for (int k = 230; k>0; k-=15) {
          ellipse(600, 350, k, k);
          ellipse(650, 100, k, k);
          /*for (int d = 180; d>0; d-=20) { dejo este bloque como comentario ya que este ciclo for no pude agregarlo debido a que mi computadora no lo logró ejecutar (la pantalla quedaba en blanco
            ellipse(550, 180, d, d);*/
            for (int u = 280; u>0; u-=17) {
              ellipse(600, 200, u, u);
           // }
          }
        }
      }
    }
}
//no logré completar todas las funciones ya que en la mayoría me saltaba error y no supe como resolverlas, en otras ni si quiera me dejaba ejecutar el programa y quedaba en blanco la pantalla.
