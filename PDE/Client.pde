import websockets.*;
final class Client{
   WebsocketClient wsc;
   public Client(){
     
   }
    
   public void connect(PApplet miracle){
      wsc= new WebsocketClient(miracle, "ws://localhost:8025/john");
   }
   public void send(){
        if(millis()>now+100){
          String str = "hello from client";
          wsc.sendMessage(str);
        }
        //println("send succese");
        now=millis();
   }
   
}

   //This is an event like onMouseClicked. If you chose to use it, it will be executed whenever the server sends a message 
    void webSocketEvent(String msg){
        println(msg);
      //JSONObject obj = JSONObject.parse(msg);
      //JSONObject JSONtest = obj.getJSONObject("a");
      //try{
      //  int b = JSONtest.getInt("b");
      //  println(b);
      //}catch(Exception e){
      //  e.printStackTrace();
      //}
    }
