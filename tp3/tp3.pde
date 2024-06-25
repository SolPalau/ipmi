// TP#3 — OpArt con Funciones y Ciclo For

color color1, color2;

void setup() {
  size(500, 500);
  color1 = 0;
  color2 = 255;
}

void draw() {
  background(255);
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      // Rellena los rectangulos con color1
      fill(color1);
      stroke(#747373);
      strokeWeight(10);
      rect(50 * i, 50 * j, 50, 50);

      // Rellena los circulos con color2
      fill(color2);
      noStroke();
      circle(50 * i + 25, 50 * j + 25, 20);
    }
  }
}

void mouseClicked() {
  color1 = 255;
  color2 = 0;
  // Invierte los colores con el click del mouse
}

void keyPressed() {
  if (keyCode == ' ') { // Use single space for comparison
    setup();
    // Reinicia el sketch presionando Espacio
  }
}
