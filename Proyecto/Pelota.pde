class Pelota{
   private float posX, posY;
   private float direccionX, direccionY;
   private float diametro;
   private float velocidad;
   
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
  public boolean colisionarConRaqueta(Raqueta raqueta) {
    return posY + diametro/2 >= raqueta.getPosY() &&    
           posX >= raqueta.getPosX() &&                 
           posX <= raqueta.getPosX() + raqueta.getAncho();     
  }
  public void reiniciar() {
    direccionX = 0;
    direccionY = 0;
  }
  // Getters y Setters
  public float getPosX() { 
    return posX; 
  }
  public float getPosY() { 
    return posY; 
  }
  public float getDireccionX() { 
    return direccionX; 
  }
  public float getDireccionY() { 
    return direccionY; 
  }
  public float getDiametro() { 
    return diametro; 
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
  public void setDireccionX(float direccionX) { 
    this.direccionX = direccionX; 
  }
  public void setDireccionY(float direccionY) { 
    this.direccionY = direccionY; 
  }
  public void setDiametro(float diametro) { 
    this.diametro = diametro; 
  }
  public void setVelocidad(float velocidad) { 
    this.velocidad = velocidad; 
  }
}
