ParkingLot lot = new ParkingLot();
Car car = new Car(0,237,30,0);
Car car2 = new Car(465,840,30,20);
Date date = new Date(2,7,50,1);
ControlPanel today;




void setup(){
size(1000,1000);



}


void draw(){
background(200);
today = new ControlPanel(0);
lot.drawLot();
lot.stallStatusLeave();
car2.drawCarLeave();
car.addCar();
car2.addCar2();
lot.drawStallArray();
date.time();
lot.calculator.rateUpdate();

}


 
  