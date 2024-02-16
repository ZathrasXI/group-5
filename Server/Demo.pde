import websockets.*;

ArrayList<Client> clients = new ArrayList<Client>();
WebsocketServer ws;
int now;

void setup(){
  size(200,200);
  
  //Initiates the websocket server, and listens for incoming connections on ws://localhost:8025/john
  ws= new WebsocketServer(this,8025,"/john");
  now=millis();
}

void draw(){
  synchronized(this) {
    //Send message to all clients very 5 seconds
    if(millis()>now+100){
      ws.sendMessageTo("hello",clients.get(0).uid);
      now=millis();
    }
  }
}

//This is an event like onMouseClicked. If you chose to use it, it will be executed whenever a client sends a message

void webSocketServerEvent(String msg){
  synchronized(this) {
    JSONObject obj = new JSONObject();
    String ip = obj.getString("ip");
    
    
  }
}

public void webSocketConnectEvent(String uid, String ip) {
  synchronized(this){
    clients.add(new Client(uid,ip));
    println("Someone connected", uid, ip);
  }
}
  
public void webSocketDisconnectEvent(String uid, String ip) {
  println("Someone disconnected", uid, ip);
  synchronized(this){
    for(int i=0;i<clients.size();i++){
      if(clients.get(i).uid==uid&&clients.get(i).ip==ip){
        clients.remove(i);
        return;
      }
    }
  }
}
