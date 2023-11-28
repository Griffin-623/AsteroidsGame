public class star{

private int myX,myY;
public star(){
  myX = (int)(Math.random()*600);
  myY = (int)(Math.random()*600);
}
public void show(){
fill(255);
ellipse(myX,myY,1,1);
}


}

