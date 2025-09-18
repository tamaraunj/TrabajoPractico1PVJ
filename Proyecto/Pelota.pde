class Pelota{
   float posX, posY;
   float direccionX, direccionY;
   float diametro;
   float velocidad;
   
  //Constructor por defecto
  public Pelota(){
  }
  
  public Pelota(float posX, float posY, float diametro, float velocidad){
    this.posX=posX;
    this.posY=posY;
    this.diametro=diametro;
    this.velocidad=velocidad;
    this.direccionX=1;
    this.direccionY=1;
  }
  
  public void dibujarPelota(){
    fill(#1250C9);
    ellipse(posX, posY, diametro, diametro);
  }
  public void moverPelota(){
    posX+=direccionX*velocidad;
    posY+=direccionY*velocidad;
    if(posX>=width-diametro/2 || posX<=diametro/2){
       direccionX*=-1;
    }
    if(posY>=height-diametro/2 || posY<=diametro/2){
       direccionY*=-1;
    }  
  }
}
