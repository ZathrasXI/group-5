class MyObject{
  Test a;
  public MyObject(){
    a = new Test();
  }
  
  public JSONObject toJSONObject(){
      JSONObject obj = new JSONObject();
      obj.setJSONObject("a",testToJSONObject());
      return obj;
  }
  
  private JSONObject testToJSONObject(){
    JSONObject obj = new JSONObject();
    obj.setInt("a",a.b);
    return obj;
  }
}
