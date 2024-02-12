abstract class MoveObject{
  public PImage image;
  public int curX;
  public int curY;
  public int prevX;
  public int prevY;
  public int speed;
  public boolean isVisiable = false;

  public void move(){
    prevX = curX;
    curX+=speed;
  };

  public PImage getImage() {
    return image;
  }

  public void setImage(PImage image) {
    this.image = image;
  }

  public int getCurX() {
    return curX;
  }

  public void setCurX(int curX) {
    this.curX = curX;
  }

  public int getCurY() {
    return curY;
  }

  public void setCurY(int curY) {
    this.curY = curY;
  }

  public int getPrevX() {
    return prevX;
  }

  public void setPrevX(int prevX) {
    this.prevX = prevX;
  }

  public int getPrevY() {
    return prevY;
  }

  public void setPrevY(int prevY) {
    this.prevY = prevY;
  }

  public int getSpeed() {
    return speed;
  }

  public void setSpeed(int speed) {
    this.speed = speed;
  }

  public boolean isVisiable() {
    return isVisiable;
  }

  public void setVisiable(boolean visiable) {
    isVisiable = visiable;
  }

  public boolean isOutOfBound(){
    return false;
  };
  

}
