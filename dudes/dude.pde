public class Dude{
  private float size;
  private float speedX;
  private float speedY;
  private int coluor;
  private String emotion; 
  private float growthRate;
  private float xPos;
  private float yPos;
  
  public Dude(float s,int c,String e,float GR){
    xPos = 200;
    yPos = 200;
    speedX = random(-10,10);
    speedY = random(-10,10);
    size = s; 
    coluor = c;
    emotion = e;
    growthRate = GR;
    
  }
  public void update(){
    if (xPos-(size/2)<=0|| xPos+(size/2)>=400){
      speedX= -1*speedX;
    }
    if (yPos-(size/2) <= 0 || yPos+(size/2)>=400){
      speedY = -1*speedY;
    }
  xPos += speedX;
  yPos += speedY;
  size += growthRate;
  drawDude();
  }
  private void drawDude(){
    fill(coluor);
    circle(xPos,yPos,size);
    
  }
}
