public class Dude {
  private float size;
  private float speedX;
  private float speedY;
  private int coluor;
  // private String emotion;
  private float growthRate;
  private float xPos;
  private float yPos;
public Dude(){
  xPos = random(250);
    yPos = random(250);
    speedX = random(-10, 10);
    speedY = random(-10, 10);
    size = random(5,20);
    coluor =  #2AC68E;
    growthRate = random(0.1);
}
  public Dude(float s, int c, String e, float GR, float x, float y) {
    xPos = x;
    yPos = y;
    speedX = random(-10, 10);
    speedY = random(-10, 10);
    size = s;
    coluor = c;
    // emotion = e;
    growthRate = GR;
  }
  public void update() {
    colide();
    xPos += speedX;
    yPos += speedY;
    drawDude();
  }
  private void drawDude() {
    //if (emotion.equals("happy")){

    //}
    fill(coluor);
    circle(xPos, yPos, size);
  }

  private void colide() {
     int temp = (int)(random(5));
    if (xPos-(size/2)<=0|| xPos+(size/2)>=400.0) {
      speedX= (-1*speedX);
     if (temp==4){
     makeMoreDudes();
     }
      size += size * growthRate;
    }
    if (yPos-(size/2) <= 0 || yPos+(size/2)>=400.0) {
      speedY = (-1*speedY);
      if (temp==4){
     makeMoreDudes();
     }
      size += size * growthRate;
      
    }
  }
  public float getX() {
    return xPos;
  }
  public float getY() {
    return  yPos;
  }
  public float getSize() {
    return size;
  }
  public float getSpeedX() {
    return speedX;
  }
  public void setSpeedX(float in) {
    speedX=in;
  }
  public void setSpeedY(float in){
    speedY=in;
  }
  public float getSpeedY(){
    return speedY;
  }
}
