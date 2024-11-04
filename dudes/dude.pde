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
    speedX = random(10);
    speedY = random(10);
    size = s; 
    coluor = c;
    emotion = e;
    growthRate = GR;
    
  }
  public void update(){
  xPos += speedX;
  yPos += speedY;
  }
  private void drawDude(){
    
  }
}
