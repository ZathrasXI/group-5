import gifAnimation.*;
import ddf.minim.*;
//declaration of GameConstant
GameConstant gameConstant;

//declaration of ButtonImage
ButtonImage buttonImage; 

//declaration of BackgroundImage
BackgroundImage backgroundImage; 

//declaration of Level
Level level;

//start background 
Gif gif;
PImage backgroundStart;

//start font
//PFont font;

//gameName miracle
PImage gameName;

//bgm starter
Minim minim;
AudioPlayer playerLevelBegin;
AudioPlayer playerLevelSet;

//GameStatus
GameStatus gameStatus;

//SetPanel
SetPanel setPanel;

void setup(){
  //init GameConstant
  gameConstant = new GameConstant(); 
  
  //init ButtonImage
  buttonImage = new ButtonImage();
  
  //init BackgroundImage
  backgroundImage = new BackgroundImage();
  
  //init gameName
  gameName = loadImage("miracle.png");
  
  //init gif 
  gif = new Gif(this,"background_start1.gif");
  //backgroundStart = loadImage("background_start.gif");
  gif.play();
  
  //font
  //font = createFont("monaco.ttf",50);
  //draw welcome screen
  
  //init bgm
  minim = new Minim(this);
  playerLevelBegin = minim.loadFile(Bgm.bgmLevelBegin);
  playerLevelSet = minim.loadFile(Bgm.bgmLevelBegin);
  
  //init GameStatus
  gameStatus = new GameStatus();
  
  //init setPanel
  setPanel = new SetPanel();
  
  size(1024,630);
}

void draw(){
  // show background with level
  //init cursor
  cursor(buttonImage.cursor);
  if(gameStatus.curLevel == Level.LEVEL_BEGIN){
    // play music
    bgmStart(gameStatus.curLevel);
    imageMode(CORNER);
    image(gif, 0,0 ,width,height);
    imageMode(CORNER);
    image(buttonImage.BTN_SETTAG,width-70,30,40,40);
    drawButton(level.LEVEL_BEGIN);
    imageMode(CENTER);
    // need to be confirmed(design a function matched with level)
    image(gameName,gameConstant.MAX_WIDTH/2,gameConstant.MAX_HEIGHT/5,gameName.width,gameName.height);
  }
  if(gameStatus.curLevel == Level.LEVEL_SET){
    // play music
    bgmStart(gameStatus.curLevel);
    setPanel.createPanel();
  }
  
 
  
  
}
