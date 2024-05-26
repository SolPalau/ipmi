PImage pantalla1, pantalla2, pantalla3, pantalla4;
String estado="pantalla 1";
int cuentaFotograma=0;
int y = 0;
PFont miFont;

void setup() {
  size (640, 480);
  frameRate (45);
  miFont = loadFont("Cambria-Bold-48.vlw");
  textFont(miFont);


  pantalla1=loadImage ("pantalla1.jpg");
  pantalla2=loadImage ("pantalla2.jpg");
  pantalla3=loadImage ("pantalla3.jpg");
  pantalla4=loadImage ("pantalla4.jpg");
}

void draw () {
  println (frameCount);
  background (#E4F4FD);

  if (estado.equals ("pantalla 1")) {
    image (pantalla1, 0, 0, 640, 480);
    textAlign (CENTER);
    textSize (13);
    fill (#FFFFFF);
    rect (120, y, 400, 120);
    fill (0);
    text ("Daniel Canogar\nDraft I – Universal Declaration of Human Rights\nDraft II – American Constitution\nDraft III – Magna Carta (2017).", 320, y+40);
    cuentaFotograma++;
    if (cuentaFotograma>=200) {
      estado = "pantalla 2";
      cuentaFotograma=0;
      y=0;
    }
  } else if (estado.equals ("pantalla 2")) {
    image (pantalla2, 0, 0, 640, 480);
    textAlign (CENTER);
    textSize (13);
    fill (#FFFFFF);
    rect (77, y, 480, 160);
    fill (0);
    text ("Nacido en Madrid (1964), de madre estadounidense y padre español,\n la vida y la carrera de Daniel Canogar han tendido un puente entre España y\n los Estados Unidos. La fotografía fue su primer medio elegido, y recibió\n una maestría de la Universidad de Nueva York en el Centro Internacional de \nFotografía en 1990. Pronto Se interesó por las posibilidades de la imagen\nproyectada y el arte de la instalación.", 320, y+40);

    //mov:
    cuentaFotograma++;
    if (cuentaFotograma>=200) {
      estado = "pantalla 3";
      cuentaFotograma=0;
      y=0;
    }
  } else if (estado.equals ("pantalla 3")) {
    image (pantalla3, 0, 0, 640, 480);
    textAlign (CENTER);
    textSize (13);
    fill (#FFFFFF);
    rect (60, y, 520, 160);
    fill (0);
    text ("El creador visual Daniel Canogar encuentra su propio camino en el formato digital\n y vuelve a ser uno de los autores destacados de la feria. \nTres pantallas (Draft I, II y III) de 144 x 81 x 4 cm, situadas en el \nstand de la galería Anita Beckers, generan coloridas animaciones a partir de textos\n fundacionales del sistema democrático, incluyendo la Carta Magna,\n la Declaración Universal de\n los Derechos Humanos y la Constitución Americana.", 320, y+40);

    //mov:
    cuentaFotograma++;
    if (cuentaFotograma>=200) {
      estado = "pantalla 4";
      cuentaFotograma=0;
      y=0;
    }
  } else if (estado.equals ("pantalla 4")) {
    image (pantalla4, 0, 0, 640, 480);
    textAlign (CENTER);
    textSize (13);
    fill (#FFFFFF);
    rect (57, y, 520, 160);
    fill (0);
    text ("En las pantallas de Draft se ven animaciones generativas creadas con textos \nfundamentales del sistema democrático, incluida la Carta Magna, la Declaración \nUniversal de Derechos Humanos y la Constitución Americana. Estos textos se van\n distorsionando progresivamente, resultado de una reacción en tiempo real\n a la dirección e intensidad del viento de las ciudades que\n dieron origen a estos textos: Runnymede, París y Filadelfia.", 320, y+40);
  }
  y++;

}
void mousePressed () {
  println ("click" + estado);

  if (estado.equals("P. inicio")) {
    estado = "pantalla 1";
    cuentaFotograma=0;
    y=0;
  } else if (estado.equals( "pantalla 1")) {
    estado = "pantalla 2";
    cuentaFotograma=0;
    y=0;
  } else if (estado.equals("pantalla 2")) {
    estado = "pantalla 3";
    cuentaFotograma=0;
    y=0;
  } else if (estado.equals("pantalla 3")) {
    estado = "pantalla 4";
    cuentaFotograma=0;
    y=0;
  }
}

void keyPressed() {
  if (key == 'a' || key == 'A');
  estado="pantalla 1";
  y=0;

}
