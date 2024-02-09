class Helicopter extends MoveObject{
  private int health;

  public Helicopter(String imagePath,int curX,int curY,int health,int speed){
    this.curX = curX;
    this.curY = curY;
    this.health = health;
    this.speed = speed;
    image = loadImage(imagePath);
  }

  public void move(boolean isClicked){
    if(isClicked) {
      curY -= speed;
    }else{
      curY += speed;
    }
  }

  @Override
  public boolean isOutOfBound(){
    if(curY<0||curY+100>height){
      return true;
    }
    return false;
  }

  public int getHealth() {
    return health;
  }

  public void setHealth(int health) {
    this.health = health;
  }


  public void lostHealth(){
    health--;
  }
}
