class Gate {
  int posX1;
  int posY1;
  int posX2;
  int posY2;
  float fee1;
  boolean open;
 

  
  Gate (int x1, int y1, int x2, int y2, boolean open1, float fee)
  {
    posX1 = x1;
    posY1 = y1;
    posX2 = x2;
    posY2 = y2;
    open = open1;
    fee = fee1;
    
  }
  
  void drawGate (){
    stroke (0);
    strokeWeight (8);
    if (open){
    line (posX1, posY1, posX2, posY2);
    strokeWeight (1);
    fill (#2CE860);
    ellipse (posX1, posY1,10,10);
    }
    else {
     line (posX1, posY1, posX2, posY1);
     fill (#FF3B4C);
     strokeWeight (1);
     ellipse (posX1, posY1,10,10);
    }
  }
  void closedGate () {
    open = false;
  }
  void openGate (){
    open = true;
  }
  
void drawRate(){
    
    fill (0);
    textSize (16);
    text ("FEE: $" + lot.calculator.rate + "0" , 350, 821);
}
}