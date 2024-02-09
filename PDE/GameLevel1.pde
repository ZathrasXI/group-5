class GameLevel1 {
    private final Helicopter helicopter = new Helicopter("helicopter.png",0,width/4,3,10);
    private final Map map1 = new Map("map1.png",0,0,2);
    public void startLevel1(){
        if(!isGameEnd()){
          imageMode(CORNER);
          image(map1.getImage(),map1.curX,map1.curY,width,height);
          image(helicopter.getImage(),helicopter.curX,helicopter.curY,100,100);
          helicopter.move(mousePressed);
        }else{
          gameStatus.curLevel = Level.LEVEL_BEGIN;
          println("You lose!");
        }
    }
    
    public boolean isGameEnd(){
      if(helicopter.isOutOfBound()){
        return true;
      }
      return false;
    }
}
