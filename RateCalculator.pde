class RateCalculator{
  
    int revenue;
    float rate;
  
  
  
  
  int rateMultiplier(float minute){
    int rev = 0;
    if ( (date.today == 0 ||date.today == 1 ||date.today == 2||date.today == 3 ||date.today == 4)){
    if ((date.hour>=8 && date.hour<=17)){
      rev += minute*3.00;
    }
    else 
    rev += minute*1.50;
  
    
  }
    if ((date.today == 5 )){
    if ((date.hour>=8 && date.hour<=17)){
      rev += minute*2.00;
    }
    else 
    rev += minute*1.50;
    }
    if ((date.today == 6)){
      rev += minute*1.50;
    }
   return rev; 
  }
  
  void rateUpdate(){
    if ( (date.today == 0 ||date.today == 1 ||date.today == 2||date.today == 3 ||date.today == 4)){
    if ((date.hour>=8 && date.hour<=17)){
      rate = 3.00;
    }
    else 
      rate = 1.50;
    }
    if (date.today == 5){
    if ((date.hour>=8 && date.hour<=17)){
      rate = 2.00;
    }
    else 
    rate = 1.50;
    }
  if ((date.today == 6)){
      rate = 1.50;
    }
}

}