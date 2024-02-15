void mouseClicked(){
  if(isMouseInButtonStart()&&gameStatus.curLevel==Level.LEVEL_BEGIN){
    System.out.println("start button is clicked");
    gameStatus.curLevel = level.LEVEL_MAP1;
  }
  
  if(isMouseInButtonSet()&&gameStatus.curLevel==Level.LEVEL_BEGIN){
    System.out.println("set button is clicked");
    gameStatus.curLevel = Level.LEVEL_SET;
  }
  
  //bug 
  if(gameStatus.curLevel==Level.LEVEL_BEGIN){
    if(mouseX>=width-70&&mouseX<=width-30&&mouseY>=30&&mouseY<=70){
      System.out.println("settag button is clicked");
      gameStatus.curLevel = Level.LEVEL_SET;
    }
    if(isMouseInButtonLAN()){
      gameStatus.curLevel = Level.LEVEL_LOGIN;
      isLogin = true;
    }
  }
  
  if(gameStatus.curLevel==Level.LEVEL_MAP1){
    
  }
  
  
  
  if(gameStatus.curLevel==Level.LEVEL_SET){
    System.out.println("start to set!");
    if(mouseX>=setPanel.btn_delx-setPanel.del_width/2 && mouseX<=(setPanel.btn_delx+setPanel.del_width/2) && mouseY>=setPanel.btn_dely-setPanel.del_height/2 && mouseY<=(setPanel.btn_dely+setPanel.del_height/2)){
      gameStatus.curLevel = Level.LEVEL_BEGIN;
      System.out.println("exit button is clicked!");
      redraw();
    }
    if(mousePressed && setPanel.volumeMute==false){
      if(mouseX >= setPanel.minX && mouseX <=setPanel.maxX  && mouseY >= setPanel.volume_wherey-setPanel.volumewhere_height/2 && mouseY <= setPanel.volume_wherey+setPanel.volumewhere_height/2){
        setPanel.volume_wherex=mouseX;
      }
      if(mouseX>setPanel.maxX && mouseX <=setPanel.maxvolume_x+setPanel.maxvolume_width/2 && mouseY >= setPanel.volume_wherey-setPanel.volumewhere_height/2 && mouseY <= setPanel.volume_wherey+setPanel.volumewhere_height/2){
        setPanel.volume_wherex=setPanel.maxX;
      }
      if(mouseX<setPanel.minX && mouseX >=setPanel.mute_x-setPanel.mute_width/2 && mouseY >= setPanel.volume_wherey-setPanel.volumewhere_height/2 && mouseY <= setPanel.volume_wherey+setPanel.volumewhere_height/2){
        setPanel.volume_wherex=setPanel.minX;
      }
    }
    if(mousePressed && setPanel.soundeffectMute==false){
      if(mouseX >= setPanel.minX && mouseX <=setPanel.maxX  && mouseY >= setPanel.soundeffect_wherey-setPanel.volumewhere_height/2 && mouseY <= setPanel.soundeffect_wherey+setPanel.volumewhere_height/2){
        setPanel.soundeffect_wherex=mouseX;
      }
      if(mouseX>setPanel.maxX && mouseX <=setPanel.maxvolume_x+setPanel.maxvolume_width/2 && mouseY >= setPanel.soundeffect_wherey-setPanel.volumewhere_height/2 && mouseY <= setPanel.soundeffect_wherey+setPanel.volumewhere_height/2){
        setPanel.soundeffect_wherex=setPanel.maxX;
      }
      if(mouseX<setPanel.minX && mouseX >=setPanel.mute_x-setPanel.mute_width/2 && mouseY >= setPanel.soundeffect_wherey-setPanel.volumewhere_height/2 && mouseY <= setPanel.soundeffect_wherey+setPanel.volumewhere_height/2){
        setPanel.soundeffect_wherex=setPanel.minX;
      }
    }
    if(setPanel.volume_wherex==setPanel.minX){
      playerLevelBegin.mute();
      playerLevelSet.mute();
    }
    else{
      if(!setPanel.volumeMute){
        playerLevelBegin.unmute();
        playerLevelSet.unmute();
      }
    }
    if(setPanel.soundeffect_wherex==setPanel.minX){
      playerLevelBegin.mute();
      playerLevelSet.mute();
    }
    else{
      if(!setPanel.soundeffectMute){
         playerLevelBegin.unmute();
         playerLevelSet.unmute();
      }
    }
  }
}

boolean isMouseInButtonLAN(){
  return mouseX>=width/2-150 && mouseX<=width/2+150 && mouseY>=height/1.4-75 && mouseY<=height/1.4;
}

boolean isMouseInButtonStart(){
  return mouseX>=width/2-150 && mouseX<=width/2+150 && mouseY>=height/1.4-150 && mouseY<=height/1.4-75;
}

boolean isMouseInButtonSet(){
  return mouseX>=width/2-150 && mouseX<=width/2+150 && mouseY>=height/1.4+75 && mouseY<=height/1.4+150;
}
