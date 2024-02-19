import websockets.*;
import java.io.Serializable;
ArrayList<Client> clients;
HashMap<String,Client> map;
WebsocketServer ws;
int now;

void setup(){
  size(200,200);

  //Initiates the websocket server, and listens for incoming connections on ws://localhost:8025/john
  clients = new ArrayList<Client>();
  map = new HashMap<String,Client>();
  ws= new WebsocketServer(this,8025,"/john");
  now=millis();
  println("wait for someone to connect");
}

void draw(){
  synchronized(this) {
    //Send message to all clients very 1 seconds
    if(millis()>now+100){
       println("loop2");
      if(clients!=null&&clients.size()==2){
        StringBuffer msgFromServer = new StringBuffer();
        if(clients.get(0)!=null){
          msgFromServer.append(clients.get(0).msg);
        }
        msgFromServer.append(",");
        if(clients.get(1)!=null){
          msgFromServer.append(clients.get(1).msg);
        }
        String msg = msgFromServer.toString();
        println("message from server is "+msg);
        ws.sendMessage(msg);
      }
    }
    now=millis();
  }
}

void webSocketServerEvent(String msg){
  synchronized(this) {
    println(msg);
    JSONObject obj = parseJSONObject(msg);
    String ip = obj.getString("ip");
    println(ip);
    if(clients!=null&&!map.containsKey(ip)&&clients.size()<=1){
        Client client = new Client(ip,ip,msg);
        clients.add(client);
        map.put(ip,client);
        println(clients.size());
    }
    println("receive request from "+ip);
  }
}
