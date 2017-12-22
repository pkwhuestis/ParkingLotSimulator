class ParkingStall {
  // STALL ATTRIBUTES
  
  
  Date stallOccupied;
  Date stallLeft;
  
  // DIMENSIONS AND POSITION
  float stallWidth;
  float stallHeight;
  float posX;
  float posY;
  int occupied;
  float stallRevenue;
  boolean parked;

  
  
  
  
  

  ParkingStall(int x, int y, int w, int h) {
    occupied = 0;
    posX = x;
    posY = y;
    stallWidth = w;
    stallHeight = h;
  
  }
  
  void assignStart(Date a){
  stallOccupied = a;
 
  }
  
  void finishPark(Date b){
    stallLeft = b;
    
    float minuteSub = stallLeft.minute - stallOccupied.minute;
    if (minuteSub < 0){
    minuteSub = (60 - stallOccupied.minute) + stallLeft.minute;
    }
    
    lot.lotRev += lot.calculator.rateMultiplier(minuteSub);
    
     
  }
  

  


  void drawStall() {
    if (occupied == 1){
    fill(color(255, 90, 71)); // RED STALL
    stroke(255);
    strokeWeight(4);
    rect(posX, posY, stallWidth, stallHeight);
    
    }
    else{
    fill(color(152, 251, 152));  // GREEN STALL
    strokeWeight(4);
    stroke(255);
    rect(posX, posY, stallWidth, stallHeight);
    strokeWeight(4);
    }
    
   // Sets whether the stall is occupied or not
 
  }
  
 
}