Pelota pelota;
Raqueta raqueta;
boolean izquierda, derecha;


public void setup(){
  size(600,300);
  pelota= new Pelota(width/2, height-70, 40, 2);
  raqueta= new Raqueta(width/2, height-25, 60, 15);
}

public void draw(){
  background(0);
  pelota.dibujarPelota();
  pelota.moverPelota();
  raqueta.dibujarRaqueta();
  
  int direccionRaqueta = 0;
  if(izquierda){
    println("Tecla izquierda presionada");
    direccionRaqueta=-1;
  }
  if(derecha){
    println("Tecla derecha presionada");
    direccionRaqueta=1;
  }
  raqueta.moverRaqueta(direccionRaqueta);
  
}

public void keyPressed(){
  if (keyCode==LEFT || key=='A'){
    izquierda=true;
  }
  if (keyCode==RIGHT | key=='D') {
    derecha=true;
  }
}

public void keyReleased() {
  if (keyCode==LEFT || key=='A'){
    izquierda=false;
  }
  if (keyCode==RIGHT | key=='D') {
    derecha=false;
  }
}
