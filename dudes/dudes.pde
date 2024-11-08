

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
   
 for (int i = 0; i < allDudes.size()-1; i++){
   allDudes.get(i).update();
    if (allDudes.get(i).getX() == allDudes.get(i+1).getX()&&allDudes.get(i).getY()==allDudes.get(i+1).getY()){
      allDudes.get(i).setSpeedX(-1*allDudes.get(i).getSpeedX());
      makeMoreDudes();
      allDudes.get(i).update();
      System.out.println(i);
    }
    else {
    
    allDudes.get(i).update();
   }
  }
  //d2.update();
  //d1.update();
  
  
}
public void makeMoreDudes(){
  allDudes.add(new Dude(10.0,#2AC68E,"nutral",0.01));
}
