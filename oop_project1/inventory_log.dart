class InventoryLog {
  List<String> logs =[];

  void addLog(String log){
    logs.add("- ${DateTime.now()}: $log");
  }

  void displayLogs(){
    if(logs.isEmpty==true){
      print("There are no logs!");
    }
    else {
      for(String log in logs){
        print(log);
      }
    }
  }
}