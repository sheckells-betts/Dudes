

ArrayList<Dude> allDudes = new ArrayList <Dude>();
Dude d1 = new Dude(10.0,#2AC68E,"nutral",0.01);
Dude d2 = new Dude(10.0,#2AC68E,"nutral",0.01);

void setup(){
  size (400,400);
  makeMoreDudes();
  makeMoreDudes();
  makeMoreDudes();
}

  

void draw(){
  
  background(#DB2351);
   
 for (int i = 0; i < allDudes.size(); i++){
   allDudes.get(i).update();
   if (allDudes.get(i).getSize()>100){
     allDudes.remove(i);
     i=0;
   }
   //for (int a=0; a < allDudes.size(); a++){
     
 
   // if (allDudes.get(i).getX() == allDudes.get(a).getX()&&allDudes.get(i).getY()== allDudes.get(a).getY()){
   //   allDudes.get(i).setSpeedX(-1*allDudes.get(i).getSpeedX());
   //   makeMoreDudes();
   //   allDudes.get(i).update();
   // }
    
   //}
    allDudes.get(i).update();
   }
  }
  //d2.update();
  //d1.update();
  
  

public void makeMoreDudes(){
  allDudes.add(new Dude(10.0,#2AC68E,"nutral",0.01));
}
