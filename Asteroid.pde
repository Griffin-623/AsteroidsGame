public class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
  rotSpeed = Math.random()*10;
   myColor=(255);
   myCenterX=Math.random()*600;
   myCenterY=Math.random()*600; 
   myXspeed=Math.random()*5-3; 
   myYspeed=Math.random()*5-3; 
   myPointDirection=Math.random()*(PI*2); 
  corners = 6;
  xCorners = new int[corners];
  yCorners = new int[corners];
  xCorners[0]=-11;
  yCorners[0]=-8;
  xCorners[1]=7;
  yCorners[1]=-8;
  xCorners[2]=13;
  yCorners[2]=0;
  xCorners[3]=6;
  yCorners[3]=10;
  xCorners[4]=-11;
  yCorners[4]=8;
  xCorners[5]=-5;
  xCorners[5]=0;
  }
  void move(){
  turn(rotSpeed);
  super.move();
  
  }
  public double getX(){
  return myCenterX;
  }
  public double getY(){
  return myCenterY;
  }
  
}
