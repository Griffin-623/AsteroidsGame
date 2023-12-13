public class Bullet extends Floater{
  public Bullet(spaceship theShip){
    myCenterX = theShip.getX();
     myCenterY = theShip.getY();
      myXspeed=theShip.getXspeed();
     myYspeed=theShip.getYspeed();
     myPointDirection=theShip.getPointDierection();
     accelerate(6);
  }
  public void show(){
   fill(255,0,0);
    ellipse((float)myCenterX,(float)myCenterY,5,5);
    accelerate(.6);
  }
   public double getX(){
  return myCenterX;
  }
  public double getY(){
  return myCenterY;
  }

}
