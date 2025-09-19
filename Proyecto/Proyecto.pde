private Pelota pelota;
private Raqueta raqueta;
boolean izquierda, derecha;
boolean pelotaActiva = false;


public void setup(){
  size(600,300);
  pelota= new Pelota(width/2, height-70, 40, 2);
  raqueta= new Raqueta(width/2, height-30, 60, 15);
}

public void draw(){;
  background(0);
  if(pelotaActiva){
    pelota.moverPelota();
  } else{
    pelota.setPosX(width/2);
    pelota.setPosY(height-70);
  }
  
  
  int direccionRaqueta = 0;
  if(izquierda){
    direccionRaqueta=-1;
  }
  if(derecha){
    direccionRaqueta=1;
  }
  raqueta.moverRaqueta(direccionRaqueta);
  
  if (pelota.colisionarConRaqueta(raqueta)){
     pelota.setDireccionY(pelota.getDireccionY() * -1);
  }
  
  if (pelota.getPosY() > raqueta.getPosY()){
    println("GAME OVER");
    pelota.reiniciar();
    pelotaActiva=false;
  }
  
  pelota.dibujarPelota();
  raqueta.dibujarRaqueta();
  
}

public void keyPressed(){
  if (keyCode==LEFT || key=='A'){
    izquierda=true;
    if (!pelotaActiva) {
        pelotaActiva = true;
        pelota.setDireccionX(1);
        pelota.setDireccionY(-1);
     }

  }
  if (keyCode==RIGHT | key=='D') {
    derecha=true;
    if (!pelotaActiva) {
      pelotaActiva = true;
      pelota.setDireccionX(1);
      pelota.setDireccionY(-1);
    }
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
