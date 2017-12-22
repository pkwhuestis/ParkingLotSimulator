class ParkingLot {

      int xPos = 75; 
      int yPos = 350;
      float lotRev = 0;
      boolean parked = true;
      int customers;
      ArrayList<ParkingStall> primaryArray = new ArrayList<ParkingStall>();
      ArrayList<ParkingStall> availableArray = new ArrayList<ParkingStall>();
      int spotsAvailable = 60;
          
      Gate north;
      Gate south;
      Street northSt;
      Street southSt;
            
     RateCalculator calculator = new RateCalculator();
     
     
  
      
  
      
  
  void drawLot(){
   
    northSt.drawStreet(0, 223, 1000, 50);
    southSt.drawStreet(0, 825, 1000, 50);
    
    
   //Lot/Lawn
  fill(51, 171, 56);
  rect(0, 275, width, 550);
  fill(200);
  rect(30, 310, width-70, 475);
  
  //Gate pavement
  fill(200);
  rect(445, 275, 70, 35);
  noStroke();
  rect(448, 240, 65, 80);
  
  stroke(255);
  strokeWeight(4);
  fill(200);
  rect(445, 787, 70, 35);
  noStroke();
  rect(448, 772, 65, 80);
 
  fill (255); // ENTRANCE/EXIT SQUARES
  stroke (0);
  strokeWeight (4);
  rect (330,275,110,20);
  fill (#958EFF);
  stroke (0);
  strokeWeight (4);
  rect (330,295,110,20);
  fill (255);
  stroke (0);
  strokeWeight (4);
  rect (330,785,110,20);
  fill (#958EFF);
  stroke (0);
  strokeWeight (4);
  rect (330,805,110,20);
   fill (0);
  textSize (16);
  text ("ENTRANCE", 345,292);
  text ("SPACES: " , 340,312);
  text ("EXIT", 375,801);
  
      
      
      north.drawGate();
      north.drawRate();
      south.drawGate();
  
      
 
   }
  
  
  
   void stallStatus() {
     ParkingStall stall = primaryArray.get((int)random(0,60));
     
     for (int i = 0; i < primaryArray.size(); i++){
       if (stall.occupied == 1){
       stall = primaryArray.get((int)random(0,60));
       }
      }
     stall.occupied = 1;
     customers+=1;
     spotsAvailable -=1;
     Date Occupied = new Date(date);
     stall.assignStart(Occupied);
     
     }
    
        
   
    void stallStatusLeave(){
     
     ParkingStall stall = primaryArray.get((int)random(0,60));
     int x = (int)random(0,12);
     if (x == 0){
     for (int j = 0; j < primaryArray.size(); j ++){
     if (stall.occupied == 1){
     stall.occupied = 0;
     Date finish = new Date(date);
     stall.finishPark(finish);
     spotsAvailable +=1;
     parked = false;     
   
      
    
     
     }
    } 
  }
 }
 
 

       
    
    
    
    
     
     
     

   
     

     
   
            
   void drawStallArray(){
   for (int i = 0; i < 60; i++){
      ParkingStall stall = primaryArray.get(i);
      stall.drawStall();
    }
   }

   ParkingLot() {
   for (int i = 0; i < 60; i++){
      primaryArray.add(new ParkingStall(xPos + (i*70), yPos, 70, 50));
      if (i == 4){
        yPos+=50;
        xPos = -275;
      }
      if (i == 9){
        yPos+=100;
        xPos = -625;
        }
      if (i == 14){
      yPos +=50;
      xPos = -975;      
      }
      if (i == 19){
        yPos+=100;
        xPos = -1325;
        }
       if (i == 24){
        yPos+=50;
        xPos = -1675;
      }
      if (i == 29){
      yPos = 350;
      xPos = -1560;
      }
      if (i == 34){
      yPos += 50;
      xPos = -1910;
      }
      if (i == 39){
       yPos +=100;
       xPos = -2260;
      }
      if (i == 44){
      yPos +=50;
      xPos = -2610;
      }
      if (i == 49){
      yPos +=100;
      xPos = -2960;
      }
      if (i == 54){
      yPos += 50;
      xPos -= 350;
      
      }
      
      
      
      }
      
      
      north = new Gate (450,290,500,270,true,0);
      south = new Gate (450,810,500,790,true,0);
      northSt = new Street();
      southSt = new Street();
      
      
    }
      
      
   
}

    
   