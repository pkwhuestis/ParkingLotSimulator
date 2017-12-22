class ControlPanel{
  
 ControlPanel (int x){
 
 fill(19, 53, 109);
 rect(0,0, 1000, 220);  
   
  //rate display
 stroke(0);
 strokeWeight (4);
 fill (#969B96);
 rect ( 20,30,370,140);
 fill (0);
 textSize (22);
 text (" Parking Rates:",30,55);
 textSize (20);
 text (" $3.00/Hour  Mon-Fri   8AM to 6PM",30,85);
 text (" $2.00/Hour  Saturday  8AM to 6PM",30,120);
 text (" $1.50/Hour  All Other Times",30,155);
 
 //simulation values
 stroke(0);
 strokeWeight (4);
 fill (#969B96);
 rect ( 640,30,300,170);
 fill (0);
 textSize (22);
 text ("Simulation Values",655,55);
 textSize (16);
 text ("Net Profits: $" + lot.lotRev,655,85);
 text ("Date: ",655,120);
 text ("Customers: "+ lot.customers,655,155);
 

 stroke (0);
 strokeWeight (4);
 fill (#969B96);
 rect ( 420,40,200,120);

 stroke (0);
 strokeWeight (4);
 fill (#969B96);
 ellipse ( 470,100,80,80);
  ellipse ( 570,100,80,80);
  
 stroke (0);
 fill(#0FED00);
 triangle (455,75,495,103,455,130);

 stroke (0);
 strokeWeight (10);
 line (555,75,555,125);
 line (585,75,585,125);
 
 
}
}