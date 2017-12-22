class Car {
  int xPos;
  int yPos;
  int timer;
  int park;
  int xPosL;
  
  int spaces = 60;
  
  ArrayList<Car> carList = new ArrayList<Car>();
  ArrayList<Car> carListExit = new ArrayList<Car>();



   
  void drawCarLeave(){
   if(lot.parked == false){
    fill(0);
    stroke(0);
    rect(xPos, yPos, 30, 20);
    xPos+=10; 
   }
  }
 
   
  
  void drawCar(){
    
    fill(0);
    stroke(0);
    rect(xPos, yPos, 30, 20);
    xPos+=10; 
   
 }
   void parkCar(int park){
    fill(0);
    stroke(0);
    rect(xPos, yPos, 30, 20);
    xPos+=10;
     if (park == 1 && xPos > 465 && yPos < 250){
          xPos = 465;
          yPos +=10;
          if (yPos > 255){
          lot.stallStatus();
          if (yPos > 250){
          yPos = 2000;
          
          }
          
        } 
         
      }
   
   
   }
   
   void addCar2(){
    int x = (int)random(0,20);
    if (x == 0){
    for (int i = 0; i < 10; i++){
      carListExit.add(new Car(465,840,30,20));
     }
    }
    
    for (int j = 0; j < carListExit.size(); j++){
       Car car2 = carListExit.get(j);
      car2.drawCarLeave();
      
      }
    }
   
   
 
  void addCar(){
    int x = (int)random(0,10);
    int r =(int)random(0,2);

    if (x == 0){
    
    carList.add(new Car(xPos,yPos,(int)random(0,30),r));
      if (r==1){
    spaces --;
    
         
    }
    
    }
    textSize (16);
    fill (0);
    text ("  "+ lot.spotsAvailable, 405,312);
    
    
  
    for (int i = carList.size()-1; i >=0; i--){
      Car car1 = carList.get(i);
      if (car1.park == 1){
      car1.parkCar(car1.park);
      
    }
      else
      car1.drawCar();
      
        
  }
  }
  
  


  Car(Car d){
  xPos = d.xPos;
  yPos = d.yPos;
  timer = d.timer;
  park = d.park;
  
  }


  

Car(int a, int b, int c, int d){
  xPos = a;
  yPos = b;
  timer = c;
  park = d;
}

}