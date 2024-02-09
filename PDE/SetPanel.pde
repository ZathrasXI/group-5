public class SetPanel{
  private final PImage btn_off = loadImage("btn_off.png");
  private final PImage btn_on = loadImage("btn_on.png");
  private final PImage btn_mute = loadImage("btn_mute.png");
  private final PImage btn_line = loadImage("btn_line.png");
  private final PImage btn_audio = loadImage("btn_audio.png");
  private final PImage btn_setPanel = loadImage("btn_setPanel.png");
  private final PImage btn_point = loadImage("btn_point.png");
  private final PImage btn_exit = loadImage("btn_exit.png");
  private final PImage btn_ok = loadImage("setok.png");
  private final PImage setting = loadImage("setting.png");
  private final int fixValue1 = 502; //board_set_width
  private final int fixValue2 = 600; //board_set_height
  private final int board_setx=width/2-fixValue1/2;
  private final int board_sety=80;
  public boolean volumeMute = false;
  public final int btn_volumex=board_setx+fixValue1-150;
  public final int btn_volumey=board_sety+155;
  public boolean soundeffectMute = false;
  public final int btn_soundeffectx=board_setx+fixValue1-150;
  public final int btn_soundeffecty=board_sety+fixValue2/2-5;
  public final int maxvolume_width=45;
  public final int maxvolume_height=45;
  public final int mute_x=board_setx+fixValue1/2-110;
  public final int maxvolume_x=board_setx+fixValue1/2+130;
  public final int volume_liney=board_sety+fixValue2/2-55;
  public final int mute_width=35;
  public final int mute_height=35;
  public final int volume_linex=board_setx+fixValue1/2;
  public final int volumeline_width=150;
  public final int volumeline_height=9;
  public final int soundeffect_linex=board_setx+fixValue1/2;
  public final int soundeffect_liney=board_sety+fixValue2/2+85;
  public final int volumewhere_width=23;
  public final int volumewhere_height=23;
  public int volume_wherex=volume_linex;
  public int volume_wherey=volume_liney;
  public int soundeffect_wherex=soundeffect_linex;
  public int soundeffect_wherey=soundeffect_liney;
  public final int maxX=volume_linex+volumeline_width/2-volumewhere_width/2;
  public final int minX=volume_linex-volumeline_width/2+volumewhere_width/2;
  public final int volumebtn_width=70;
  public final int volumebtn_height=40;
  public final int btn_delx=board_setx+fixValue1-50;
  public final int btn_dely=board_sety+50;
  public final int del_width=30;
  public final int del_height=30;

  public void createPanel(){
    imageMode(CORNER);
    image(btn_setPanel,board_setx,board_sety,fixValue1,fixValue2);
    if(!volumeMute){
      image(btn_on,btn_volumex,btn_volumey,volumebtn_width,volumebtn_height);
    }
    else{
      image(btn_off,btn_volumex,btn_volumey,volumebtn_width,volumebtn_height);
    }
    if(!soundeffectMute){
      image(btn_on,btn_soundeffectx,btn_soundeffecty,volumebtn_width,volumebtn_height);
    }
    else{
      image(btn_off,btn_soundeffectx,btn_soundeffecty,volumebtn_width,volumebtn_height);
    }
    imageMode(CENTER);
    image(btn_mute,mute_x,volume_liney,mute_width,mute_height);
    image(btn_mute,mute_x,soundeffect_liney,mute_width,mute_height);
    image(btn_audio,maxvolume_x,volume_liney,maxvolume_width,maxvolume_height);
    image(btn_audio,maxvolume_x,soundeffect_liney,maxvolume_width,maxvolume_height);
    image(btn_line,volume_linex,volume_liney,volumeline_width,volumeline_height);
    image(btn_line,soundeffect_linex,soundeffect_liney,volumeline_width,volumeline_height);
    image(btn_point,volume_wherex,volume_wherey,volumewhere_width,volumewhere_height);
    image(btn_point,soundeffect_wherex,soundeffect_wherey,volumewhere_width,volumewhere_height);
    image(btn_exit,btn_delx,btn_dely,del_width,del_height);
    image(btn_ok,width/2,height-75,200,200);
    image(setting,width/2,height-450,800,600);
  }
}
