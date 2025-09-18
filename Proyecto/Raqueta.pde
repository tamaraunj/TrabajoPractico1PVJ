class Raqueta{
  float posX, posY;
  float ancho, alto;
  float velocidad;
  
  //Constructor por defecto
  public Raqueta(){
  }
  public Raqueta(float posX, float posY, float ancho, float alto){
    this.posX=posX;
    this.posY=posY;
    this.ancho=ancho;
    this.alto=alto;
    this.velocidad=4;
  }
  
  public void dibujarRaqueta(){
    fill(#FC1717);
    rect(this.posX,this.posY,this.ancho,this.alto);
  }
  
  public void moverRaqueta(int direccion){
    this.posX+=direccion * velocidad;  
    if (this.posX<0){
      this.posX=0;
    }
    if(this.posX > width - this.ancho){
      this.posX = width - this.ancho;
    }
    
  }
  
}
