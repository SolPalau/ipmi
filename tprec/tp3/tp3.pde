//https://youtu.be/QLh2BqQgd3M

PImage userImage; // Variable para almacenar la imagen

color color1, color2;
float posX, posY;
boolean isMouseOver = false;

void setup() {
  size(800, 400); // Resolución de 800x400
  color1 = color(0);
  color2 = color(255);
  posX = width / 2;
  posY = height / 2;
  
  // Carga la ilusión óptica de referencia
  userImage = loadImage("data/ilusion_optica.png"); // La imagen de referencia está ubicada a la izquierda
}

void draw() {
  background(255);
  
  // imagen en la parte izquierda
  if (userImage != null) {
    image(userImage, 0, 0, width / 2, height);
  }
  
  // ilusión óptica en la parte derecha
  for (int i = width / 2; i < width; i += 50) { // Ciclos FOR anidados
    for (int j = 0; j < height; j += 50) {
      fill(color1);
      stroke(#747373);
      strokeWeight(10);
      rect(i, j, 50, 50);
      fill(color2);
      noStroke();
      circle(i, j, 20);
    }
  }
  
  if (checkMouseProximity()) { // Condicionales (if - else)
    fill(map(mouseX, width / 2, width, 0, 255), 0, 0); 
    ellipse(posX, posY, 30, 30);
  }
}

void mouseClicked() {
  color1 = color(255);
  color2 = color(0);
}

void keyPressed() {
  if (keyCode == ' ') {
    setup(); // Reiniciar el programa: volver variables a estado original
  }
}

void mouseMoved() {
  float distance = dist(mouseX, mouseY, posX, posY);
  if (distance < 15) {
    isMouseOver = true; // Eventos (mouse y/o teclado): modificación de variables
  } else {
    isMouseOver = false;
  }
}

boolean checkMouseProximity() { // Función propia que RETORNA un valor booleano
  float distance = dist(mouseX, mouseY, posX, posY);
  return distance < 15;
}
