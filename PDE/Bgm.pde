public class Bgm{
  public static final String bgmLevelBegin = "bgmLevelBegin.mp3";
}

void bgmStart(Level level){
  if(level == Level.LEVEL_BEGIN){
    if(!playerLevelBegin.isPlaying()){
        playerLevelBegin.rewind();
        playerLevelBegin.play();
    }
  }else{
    playerLevelBegin.pause();
  }
  
  if(level == Level.LEVEL_SET){
    if(!playerLevelSet.isPlaying()){
        playerLevelSet.rewind();
        playerLevelSet.play();
    }
  }else{
    playerLevelSet.pause();
  }
   
  //to do
}
