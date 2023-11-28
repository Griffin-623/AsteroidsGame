spaceship Griff = new spaceship();
star[] nightSky = new star[200];
void setup(){
  
  size(600,600);
   for(int i = 0; i <nightSky.length;i++){
     nightSky[i]=new star();
   }
  background(0);
}

void draw(){
  background(0);
   for(int i = 0; i <nightSky.length;i++){
   nightSky[i].show();
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
