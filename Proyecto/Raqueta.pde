class Raqueta{
  private float posX, posY;
  private float ancho, alto;
  private float velocidad;
  
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
 
  public float getPosX() {
    return posX;
  }
  public float getPosY() {
    return posY;
  }
  public float getAncho() {
    return ancho;
  }
  public float getAlto() {
    return alto;
  }
  public float getVelocidad() {
    return velocidad;
  }
  public void setPosX(float posX) {
    this.posX = posX;
  }
  public void setPosY(float posY) {
    this.posY = posY;
  }
  public void setAncho(float ancho) {
    this.ancho = ancho;
  }
  public void setAlto(float alto) {
    this.alto = alto;
  }
  public void setVelocidad(float velocidad) {
    this.velocidad = velocidad;
  } 
}
