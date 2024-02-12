abstract class FixedObject{
  public PImage image;
  public int curX;
  public int curY;
  public boolean isVisiable = false;

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

  public boolean isVisiable() {
    return isVisiable;
  }

  public void setVisiable(boolean visiable) {
    isVisiable = visiable;
  }


}
