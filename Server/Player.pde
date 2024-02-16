class Player implements Serializable{
    public Helicopter helicopter = new Helicopter("helicopter.png",0,width/4,3,15);
    public Lazor lazor = new Lazor();
    public ScorePanel scorePanel = new ScorePanel();
    public AbilityBox[] boxs = new AbilityBox[3];
    public boolean isGameEnd = false;
    
    public JSONObject toJSONObject(){
      JSONObject obj = new JSONObject();
      JSONObject[] objsAbilityBox=  new JSONObject[3];
      int i = 0;
      for(AbilityBox box:boxs){
        objsAbilityBox[i] = box.toJSONObject(); 
        obj.setJSONObject("box"+i,objsAbilityBox[i]);
        i++;
      }
      obj.setJSONObject("helicopter",helicopter.toJSONObject());
      obj.setJSONObject("lazor",lazor.toJSONObject());
      obj.setJSONObject("scorePanel",scorePanel.toJSONObject());
      obj.setBoolean("isGameEnd",isGameEnd);
      return obj;
    }
    
    private void initBoxs(){
      int path = 20;
      for(int i=0;i<boxs.length;i++){
        boxs[i] = new AbilityBox();
        boxs[i].curY = 0;
        boxs[i].curX = 100+path+i*75;
      }
    }
    
    public boolean isGameEnd(){
      if(helicopter.isOutOfBound()){
        return true;
      }
      return false;
    }
    
    public void drawGamePanel(){
       fill(255);
       textSize(30);
       text("Score:",0,50);
       text(scorePanel.score,90,50);
       text("Gold:",0,100);
       text(scorePanel.goldCount,90,100);
       scorePanel.updateScore();
    }
    
    
    public void drawAbilityBoxs(){
       for(AbilityBox box:boxs){
         image(box.image,box.curX,box.curY,150,150);
       }
    }
    
    public void drawLazor(){
      updateLazor();
      if(lazor.isVisiable==true){
         image(lazor.image,lazor.curX+40,lazor.curY-45,1500,150);
         lazor.move();
         lazor.isVisiable = false;
      }
    }
    
    public void updateLazor(){
      lazor.curX = helicopter.curX;
      lazor.curY = helicopter.curY;
    }
}
