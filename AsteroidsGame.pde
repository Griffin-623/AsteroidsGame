spaceship Griff = new spaceship();
star[] nightSky = new star[200];
Bullet bob = new Bullet(Griff);
ArrayList<Bullet> shots = new ArrayList<Bullet>();
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
   for(int e = 0; e< shots.size();e++){ 
    float d2 = dist((float)shots.get(e).getX(),(float)shots.get(e).getY(),(float)Rocks.get(i).getX(),(float)Rocks.get(i).getY());
        if(d2<20){
       Rocks.remove(i);
       shots.remove(e);
       i--;
       break;
       }
   }
   if(d<20){
   Rocks.remove(i);
   i--;
   } 
   
   
 }
  Griff.show();
  Griff.move();
     for(int i = 0; i <shots.size(); i++){
   shots.get(i).show();
   shots.get(i).move();
  
   if(shots.get(i).getX()>width-1||shots.get(i).getX()<1){
    
     shots.remove(i);
      break;

   }
   if(shots.get(i).getY()>height-1||shots.get(i).getY()<1){
   shots.remove(i);
   break;
   
   }
   
   
   
 }

  

  
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
    else if(key == ' '){
     shots.add(new Bullet(Griff));
    }
   
 
}
