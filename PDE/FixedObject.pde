abstract class FixedObject{
  private PImage image;
  private int curX;
  private int curY;
  private boolean isVisiable = false;

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
