import websockets.*;


WebsocketServer ws;
String client;
String client1;
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
      ws.sendMessage(client+" "+client1);
      now=millis();
    }
  }
}

//This is an event like onMouseClicked. If you chose to use it, it will be executed whenever a client sends a message

void webSocketServerEvent(String msg){
  synchronized(this) {
    if(msg.equals("hello from client1")){
      client1 = msg;
    }else{
      client = msg;
    }
    println(msg);
  }
}
