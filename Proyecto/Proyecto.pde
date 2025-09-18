Pelota pelota;
Raqueta raqueta;

public void setup(){
  size(600,300);
  pelota= new Pelota(width/2, height-70, 40,2);
}

public void draw(){
  background(0);
  pelota.dibujarPelota();
  pelota.moverPelota();
  
}
