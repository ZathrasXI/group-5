void drawButton(Level level){
  switch(level){
    case LEVEL_BEGIN:
      drawButtonBegin();
      break;
    //to do
  }
}

void drawButtonBegin(){
  imageMode(CENTER);
  //set hover styles
  if(isMouseInButtonStart()){
    buttonImage.HOVER_BTN_START = true;
  }else{
    buttonImage.HOVER_BTN_START = false;
  }
  
  if(isMouseInButtonSet()){
    buttonImage.HOVER_BTN_SET = true;
  }else{
    buttonImage.HOVER_BTN_SET = false;
  }
  
  if(buttonImage.HOVER_BTN_START){
    tint(150,100);
  }else{
    noTint();
  }
  image(buttonImage.BTN_START, gameConstant.MAX_WIDTH/2, gameConstant.MAX_HEIGHT/2, buttonImage.BTN_START.width/4, buttonImage.BTN_START.height/5);
  
  if(buttonImage.HOVER_BTN_SET){
    tint(150,100);
  }else{
    noTint();
  }
  image(buttonImage.BTN_SET, gameConstant.MAX_WIDTH/2, gameConstant.MAX_HEIGHT/2+gameConstant.BUTTON_SPACE, buttonImage.BTN_START.width/4, buttonImage.BTN_START.height/5);
  noTint();
}
