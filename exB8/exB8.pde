PFont f;
float corFixa=0.5;

void setup() {
  size(500, 500);
  f = createFont("Arial",20,true);
  textFont(f,14);
  textAlign(LEFT);
  colorMode(RGB, 1); 
}

void draw() {  
  // altura = verde
  // largura = azul
  float cor1 = (float)mouseY/height;
  float cor2 = (float)mouseX/width;
  background(corFixa,cor1,cor2);
  
  fill(1);
  rect(0,0,150,80);
  fill(0);
  text("vermelho = "+corFixa,20,20);
  text("verde = "+cor1,20,40);
  text("azul = "+cor2,20,60);
}
