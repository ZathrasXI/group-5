import g4p_controls.*;

class LoginUnit {
  GWindow gWindow ;
  GTextField usernameField, passwordField;
  public LoginUnit(PApplet window) {
      gWindow = GWindow.getWindow(window,"login",width/2,height/2,400,200,JAVA2D);
      usernameField = new GTextField(gWindow, 100, 50, 200, 30);
      usernameField.setPromptText("Username");
      
      passwordField = new GTextField(gWindow, 100, 100, 200, 30);
      passwordField.setPromptText("Password");
      passwordField.setOpaque(true); // 设置密码框不透明
      
      loginButton = new GButton(gWindow, 150, 150, 100, 40,"1");
      loginButton.setText("Login");
      isLogin = false;
  }
}

void handleButtonEvents(GButton button, GEvent event){
  if(button==loginButton&&event == GEvent.CLICKED){
    println("login!");
    loginUnit.gWindow.setVisible(false);
    loginUnit.gWindow.close();
    gameStatus.curLevel = Level.LEVEL_BEGIN;
  }
}
