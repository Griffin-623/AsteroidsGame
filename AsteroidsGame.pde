spaceship Griff = new spaceship();
star[] nightSky = new star[200];
ArrayList<Asteroid> Rocks = new ArrayList <Asteroid>();
public void setup(){
  size(600,600);
  for(int i = 0; i <nightSky.length;i++){
     nightSky[i]=new star();
   }
   for(int i = 0; i <10; i++){
   Rocks.add(new Asteroid());
   }
  background(0);
}

public void draw(){
  background(0);
   for(int i = 0; i <nightSky.length;i++){
   nightSky[i].show();
   }
    for(int i = 0; i <Rocks.size(); i++){
   Rocks.get(i).show();
   Rocks.get(i).move();
   float d = dist((float)Griff.getX(),(float)Griff.getY(),(float)Rocks.get(i).getX(),(float)Rocks.get(i).getY());
   if(d<10){
   Rocks.remove(i);
   } 
 }
  Griff.show();
  Griff.move();

  
}

public void keyPressed(){
  if(key == '5'){
    Griff.accelerate(0.5);
 }
 if(key == '6'){
      Griff.turn(10);
    }
    if(key == '4'){
      Griff.turn(-10);
    }
    if(key == '9'){
    Griff.hyperScape();
    }
   
 
}
