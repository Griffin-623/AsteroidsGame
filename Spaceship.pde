public class spaceship extends Floater{
 
  public spaceship(){
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0]=-8;
    yCorners[0]=-8;
    xCorners[1]=16;
    yCorners[1]=0;
    xCorners[2]=-8;
    yCorners[2]=8;
    xCorners[3]=-2;
    yCorners[3]=0;
    //ship features
   myColor=(255);
   myCenterX=300;
   myCenterY=300;
   myXspeed=0;
   myYspeed=0;
   myPointDirection=0;
   
   
  }
public void hyperScape(){
  myCenterX = Math.random()*600;
  myCenterY = Math.random()*600;
   myXspeed=0;
   myYspeed=0;
   myPointDirection=Math.random()*360;
}
public double getX(){
  return myCenterX;
  }
  public double getY(){
  return myCenterY;
  }

 
}
