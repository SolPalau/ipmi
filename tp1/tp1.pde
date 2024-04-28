PImage kanye;

void setup(){
  size(800, 400);
  background(#52C3C6);
  kanye = loadImage("kanye.jpg");
  
  
}

void draw(){
  image(kanye, 0, 0, 400, 400);
  push();
  
  // Remera
  fill(0);
  noStroke();
  ellipse(600, 450, 400, 400); 
  
  // Cuello
  pop();
  noStroke();
  fill(#865129);
  ellipse(600, 320, 200, 130); 
  
  // Orejas
  
  ellipse(503, 180, 12, 70); 
  ellipse(698, 180, 12, 70); 
  
  //Cabeza
  fill(#8E5D38);
  ellipse(600, 170, 200, 310); 
  ellipse(600, 130, 200, 240);
  fill(0);
  circle(600, 109, 200);
  fill(#8E5D38);
  circle(600, 130, 190);
  
  // Barba
  fill(#1C1916);
  rect(550, 265, 100, 50);
  rect(550, 220, 10, 90);
  rect(550, 220, 90, 10);
  rect(640, 220, 10, 90);
  
  // Ojos
  fill(254);
  ellipse(555, 150, 35, 18); 
  ellipse(642, 150, 35, 18); 
  fill(0);
  ellipse(642, 150, 15, 15); 
  ellipse(555, 150, 15, 15); 
  
  // Cejas
  fill(#1C1916);
  rect(527, 120, 55, 15);
  rect(615, 120, 55, 15);
  
  // Boca
  fill(#CE8870);
  ellipse(600, 250, 80, 30); 
  ellipse(585, 245, 50, 30); 
  ellipse(615, 245, 50, 30); 
  
  // Nariz
  fill(#7C3F27);
  triangle(575, 210, 600, 130, 630, 210);
}
