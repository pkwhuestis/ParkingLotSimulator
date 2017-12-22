class Date {
  

  
  final String [] days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
  int today;
  int hour;
  int minute;
  int before_noon;
  String date = days[today];
  int second;
  int timeCounter = 0;
  
  Date(int d, int h, int m, int beforeNoon){
    today = d % 7;
    hour = h % 12;
    minute = m % 60;
    before_noon = beforeNoon;
    
    if (hour == 0)
      hour = 12;
 
  }
 
  Date(Date d) {
    today = d.today;
    hour = d.hour;
    minute = d.minute;
    before_noon = d.before_noon;
  
}

  
  void addSecond(){
  second = second +=1 ;
     if (second == 60){
        second = 0;
        minute += 1;
        
     }
     if (minute == 60){
         minute = 0;
         hour += 1;
         timeCounter++;
     }
     if (hour == 12 && before_noon == 1){
        hour -= 12;
        hour += 1;

     if (hour == 12 && before_noon == 0){
     today += 1;
                 
                 
      }
      
     }
     fill(0);
      textSize(16);
      text ("Time Elapsed: " + timeCounter + " hours", 655, 185);
    }
    

  
  
  

 
 void time(){
   addSecond();
   displayTime();
 
 }
 
 void displayTime(){
   
    String date = days[today];
     
    
           
    if (hour < 10)
      date += " 0" + hour + ":";
    else
      date += " " + hour + ":";
   
    if (minute < 10)
      date += "0" + minute + ":";
    else
      date += minute + ":";  
    if (second < 10)
       date += "0" + second;
    else
      date += second;
  
   if (before_noon == 1)  
      date += " AM";
    else
      date += " PM";
     fill(0);
     text("Date: " + date, 655,120);
      
  }
  

 
 }
 

 