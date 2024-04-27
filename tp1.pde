//Tp1 Martina Sosa 92541/2, comisión 3 
//Prof. David Bedoian


PImage daron;

void setup() {
  size(800, 400);
  background(225);
  daron = loadImage("daronmn.jpg");
}

void draw () {
  image(daron, -37, -27);//utilicé valores negativos porque tuve problemas para recortar la foto :(

  //orejas
  noStroke();
  fill(219, 178, 175);
  bezier(469, 197, 439, 171, 440, 252, 474, 275);
  bezier(735, 188, 772, 162, 759, 267, 729, 269);

  //ropa
  fill(140, 164, 193);
  ellipse(550, 420, 200, 100);//izquierda
  triangle(680, 340, 680, 400, 760, 400);//derecha
  fill(26, 48, 75);
  triangle(680, 340, 680, 400, 750, 400);//sombra derecha
  ellipse(530, 405, 110, 55);
  /*apartado para agregar parte del cuerpo y evitar que se superponga a la ropa*/
  fill(214, 172, 160);
  ellipse(690, 400, 95, 50);
  ellipse(530, 405, 100, 30);
  /*fin del apartado*/
  fill(140, 164, 193);
  triangle(730, 380, 730, 400, 760, 400);//correción de sombra de ropa


  //cuello

  fill(214, 172, 160);
  rect(503, 270, 205, 205);

  //forma de la cara

  fill (245, 193, 188);
  stroke(245, 193, 188);
  ellipse (600, 100, 260, 190);//frente
  ellipse (623, 334, 120, 80);//relleno
  ellipse(605, 356, 120, 60);
  ellipse (510, 300, 40, 40);//mandibula izquierda
  ellipse(690, 300, 50, 40);// mandibula derecha
  ellipse(500, 200, 50, 240); //costado largo izquierdo
  ellipse(700, 200, 50, 240); //costado largo derecho
  bezier(478, 70, 416, 400, 615, 385, 638, 367); //costado curvo izquierdo
  bezier(580, 350, 730, 460, 780, 130, 700, 51);//costado curvo derecho
  ellipse(600, 200, 200, 300);//relleno del centro

  //sombras

  fill(219, 178, 175);
  bezier(500, 165, 497, 201, 575, 210, 580, 158);//ojera izquierda
  bezier(706, 164, 706, 212, 638, 193, 624, 163);//ojera derecha
  bezier(709, 113, 573, 75, 638, 193, 624, 163);//sombra ojo derecha
  bezier(490, 118, 613, 75, 581, 192, 584, 168);//sombra ojo izquierda
  fill(209, 162, 150);
  bezier(567, 107, 594, 119, 600, 145, 594, 165);//sombra superior izquierda
  bezier(634, 112, 615, 104, 609, 156, 619, 167);//sombra superior derecha
  bezier(571, 345, 597, 337, 620, 337, 643, 344);

  //sombra del mentón
  triangle(607, 235, 600, 280, 615, 280);//sombra sobre los labios
  bezier(697, 198, 678, 200, 639, 191, 626, 175);
  bezier(516, 201, 538, 201, 565, 190, 585, 176);

  //ojos

  fill(247, 231, 230);
  strokeWeight(4);
  stroke(0);
  bezier(504, 164, 502, 121, 570, 115, 586, 161);//ojo izquierdo
  bezier(504, 164, 504, 179, 558, 187, 586, 161);//ojo izquierdo
  bezier(707, 158, 707, 184, 640, 182, 626, 160);//ojo derecho
  bezier(707, 158, 711, 134, 658, 106, 626, 160);//ojo derecho
  fill(0);
  ellipse(540, 160, 30, 30);//pupila
  ellipse(670, 160, 30, 30);//pupila
  noStroke();
  fill(255);
  ellipse (540, 153, 10, 10);//destello izquierdo
  ellipse (535, 152, 7, 7);//destello izquierdo
  ellipse(670, 152, 10, 10);//destello derecho
  ellipse(665, 152, 7, 7); //destello derecho

  //cejas

  fill(0);
  bezier(583, 113, 580, 63, 479, 118, 502, 112);
  bezier(626, 111, 613, 76, 696, 95, 711, 112);
  triangle(500, 110, 515, 110, 485, 140);
  triangle(695, 110, 710, 110, 725, 140);

  //barba
  fill (142, 126, 124, 95);
  bezier(603, 343, 532, 309, 686, 308, 613, 343);
  fill (142, 126, 124, 80);
  bezier(617, 275, 471, 331, 539, 277, 602, 239);
  bezier(599, 276, 731, 323, 701, 297, 620, 236);
  fill(0);
  bezier(486, 313, 475, 304, 461, 243, 464, 204);
  bezier(524, 350, 506, 341, 492, 324, 479, 299);
  bezier(582, 385, 551, 377, 528, 364, 519, 345);
  bezier(648, 383, 622, 389, 598, 389, 566, 381);
  bezier(703, 338, 684, 366, 671, 374, 642, 385);
  bezier(726, 283, 715, 317, 703, 342, 688, 354);
  bezier(737, 223, 731, 271, 726, 296, 707, 323);
  bezier(597, 384, 528, 402, 559, 401, 537, 361);
  bezier(620, 382, 696, 399, 654, 401, 682, 358);

  //pestañas
  bezier(669, 129, 691, 115, 674, 102, 684, 132);
  bezier(683, 133, 708, 118, 697, 101, 695, 139);
  bezier(692, 138, 726, 133, 712, 117, 704, 149);
  bezier(702, 145, 730, 150, 719, 136, 707, 160);//ojo derecho
  bezier(516, 136, 521, 98, 505, 117, 533, 131);
  bezier(506, 149, 503, 106, 492, 130, 519, 135);
  bezier(503, 154, 489, 126, 482, 144, 509, 142);
  bezier(505, 169, 480, 142, 479, 155, 507, 153);

  //nariz

  fill(219, 177, 166);
  bezier(594, 148, 605, 156, 591, 219, 577, 215);//sombra
  bezier(618, 148, 605, 156, 627, 226, 636, 213);//sombra
  fill(255, 219, 209);
  triangle(605, 160, 590, 220, 620, 220);//destello
  ellipse(605, 220, 30, 30);//destello
  fill(214, 172, 160);
  ellipse(635, 235, 20, 30);
  ellipse(580, 235, 20, 30);//sombra de la nariz (izquierda)
  fill (245, 193, 188);
  ellipse(583, 235, 20, 30);//corrección izquierda
  ellipse(632, 235, 20, 30);//corrección derecha
  fill(183, 128, 113);
  bezier(595, 247, 575, 257, 573, 216, 603, 242);
  bezier(623, 246, 646, 255, 635, 214, 612, 242);

  //boca

  fill(211, 141, 124);
  bezier(611, 297, 607, 272, 569, 302, 547, 307);
  bezier(611, 297, 613, 272, 647, 298, 673, 306);
  bezier(567, 301, 581, 315, 646, 314, 654, 298);
  bezier(554, 304, 576, 321, 641, 327, 664, 302);
  fill(178, 110, 93);
  bezier(556, 305, 578, 302, 600, 288, 613, 301);
  bezier(670, 305, 652, 308, 617, 283, 608, 301);

  //pelo
  fill(0);
  bezier(464.0,190.0,452.0,160.0,452.0,88.0,475.0,56.0);
bezier(469.0,125.0,505.0,89.0,477.0,69.0,486.0,47.0);
bezier(456.0,121.0,455.0,77.0,457.0,47.0,503.0,17.0);
bezier(477.0,47.0,501.0,4.0,553.0,5.0,579.0,6.0);
bezier(468.0,72.0,485.0,0.0,536.0,-1.0,576.0,2.0);
bezier(521.0,17.0,524.0,-2.0,598.0,-3.0,603.0,12.0);
bezier(688.0,14.0,698.0,-1.0,596.0,-3.0,591.0,10.0);
bezier(735.0,70.0,723.0,12.0,687.0,1.0,638.0,4.0);
bezier(746.0,132.0,752.0,76.0,722.0,28.0,674.0,21.0);
bezier(741.0,191.0,748.0,93.0,734.0,79.0,708.0,57.0);
bezier(459.0,123.0,482.0,123.0,520.0,81.0,480.0,49.0);
bezier(523.0,13.0,531.0,42.0,517.0,85.0,455.0,99.0);//utilicé la herramienta para ayudar en el manejo de bezier, por eso los valores raros D:

























}
