int x,y,sentido;
float velocidade;

void setup(){
  size(800,600);
  x = width/2;
  y = height/2;
  sentido = -1;
  velocidade = 5;
  strokeWeight(3);
}

void draw(){
  background(190);
  
  // Carro
  beginShape();
  vertex(x-70, y + 20);
  vertex(x-50, y + 20);
  quadraticVertex(x-40,y+35,x-30,y+20);
  vertex(x+30,y+20);
  quadraticVertex(x+40,y+35,x+50,y+20);
  vertex(x+70,y+20);
  bezierVertex(x+65,y+20,x+70,y-20,x+30,y-20);
  vertex(x-20,y-20);
  vertex(x-40,y);
  vertex(x-65,y);
  endShape(CLOSE);
  
  // Movimento
  x += sentido*velocidade;
  if (x <= -70) x = width+70;
  
}

void keyPressed(){
  if (key == 'a' || key == 'A'){
    if (velocidade < 20) velocidade += 0.5;
    else velocidade = 20;
  }
  else if (key == 'f' || key == 'F'){
    if (velocidade > 1) velocidade -= 0.5;
    else velocidade = 0;
  }
}
