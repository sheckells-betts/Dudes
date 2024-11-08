

ArrayList<Dude> allDudes = new ArrayList <Dude>();
//Dude d1 = new Dude(10.0, #2AC68E, "nutral", 0.01);
//Dude d2 = new Dude(10.0, #2AC68E, "nutral", 0.01);

void setup() {
  size (400, 400);
  makeMoreDudes();
  makeMoreDudes();
  makeMoreDudes();
}



void draw() {

  background(#DB2351);

  for (int i = 0; i < allDudes.size(); i++) {
    allDudes.get(i).update();
    if (allDudes.get(i).getSize()>50) {
      allDudes.remove(i);
      i=0;
    }
    for (int a = 0; a < allDudes.size(); a++) {
      if (a == i){
        a++;
      }else if (dist(allDudes.get(i).getX(), allDudes.get(i).getY(), allDudes.get(a).getX(), allDudes.get(a).getY()) < allDudes.get(a).getSize()+allDudes.get(i).getSize() ){
        System.out.println(dist(allDudes.get(i).getX(), allDudes.get(i).getY(), allDudes.get(a).getX(), allDudes.get(a).getY())== 0);
        allDudes.get(i).setSpeedX(-1*allDudes.get(i).getSpeedX());
        allDudes.get(i).setSpeedY(-1*allDudes.get(i).getSpeedY());
        allDudes.get(a).setSpeedX(-1*allDudes.get(a).getSpeedX());
        allDudes.get(a).setSpeedY(-1*allDudes.get(a).getSpeedY());
        makeMoreDudes(allDudes.get(i).getX(),allDudes.get(i).getY());
        i=0;
        a=0;
        allDudes.get(i).update();
        System.out.println(i);
        System.out.println(a);
      }
    }
    allDudes.get(i).update();
  }
}
//d2.update();
//d1.update();



public void makeMoreDudes() {
  allDudes.add(new Dude(10.0, #2AC68E, "nutral", 0.01,random(350),random(350)));
}
public void makeMoreDudes(float x,float y){
    allDudes.add(new Dude(10.0, #2AC68E, "nutral", 0.01,x,y));
}
