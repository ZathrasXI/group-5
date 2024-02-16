import websockets.*;
import java.net.*;

final class Client{
   WebsocketClient wsc;
   public Client(){
     
   }
    
   public void connect(PApplet miracle){
      wsc= new WebsocketClient(miracle, "ws://localhost:8025/john");
   }
   public void send(){
        if(millis()>now+100){
          ProtocolDataFormat protocolDataFormat = new ProtocolDataFormat();
          protocolDataFormat.player = player1;
          try{
            InetAddress localhost = InetAddress.getLocalHost();
            String ip = localhost.getHostAddress();
            protocolDataFormat.ip = ip;
          }catch (UnknownHostException e) {
            e.printStackTrace();
          }
          JSONObject msgFromClient = protocolDataFormat.toJSONObject();
          wsc.sendMessage(msgFromClient.toString());
        }
        now=millis();
   }
   
}

   //This is an event like onMouseClicked. If you chose to use it, it will be executed whenever the server sends a message 
    public void webSocketEvent(String msg){
      synchronized(this){
        try{
        protocolDataFormat = msgToProtocolDataFormat(msg);
        player2 = protocolDataFormat.player; 
        }catch(Exception e){
           e.printStackTrace();
        }
      }
    }
    
    ProtocolDataFormat msgToProtocolDataFormat(String msgFromServer){
      JSONUtilizer tool = new JSONUtilizer();
      ProtocolDataFormat protocolDataFormat = new ProtocolDataFormat();
      JSONObject obj = JSONObject.parse(msgFromServer);
      JSONObject player = obj.getJSONObject("player");
      Player player2 = tool.JSONToPlayer(player);
      protocolDataFormat.player = player2;
      return protocolDataFormat;
    }
    
    
