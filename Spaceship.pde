class Spaceship extends Floater{  
    public Spaceship(){
      corners = 16;
      xCorners = new int[]{-9,-4,-16,-1,2,6,10,13,10,6,2,-1,-16,-4,-9,-9};
      yCorners = new int[]{6,6,14,3,5,5,3,0,-3,-5,-5,-3,-14,-5,-5,0};
      myColor = color(250,250,250);
      myCenterX = 250;
      myCenterY = 250;
      myPointDirection = 0;
    }
    public double getMyCenterX(){
      return myCenterX;
    }
    public void setCenterX(double centerX){
      myCenterX = centerX;
    }
    public double getMyCenterY(){
      return myCenterY;
    }
    public void setCenterY(double centerY){
      myCenterY = centerY;
    }
    public void setXSpeed(double sX){
    myXspeed = sX;
  }
  public void setYSpeed(double sY){
    myYspeed = sY;
  }
}
public void keyPressed(){
     if(key == 'a' || key == 'A'){
       ship.setXSpeed(-2);
     }
     if(key == 'w' || key == 'W'){
       ship.setYSpeed(-2);
     }
     if(key == 's' || key == 'S'){
       ship.setYSpeed(2);
     }
     if(key == 'd' || key == 'D'){
       ship.setXSpeed(2);
     }
     if(key == 'l' || key == 'L'){
       ship.turn(5);
     }
     if(key == 'k' || key == 'K'){
       ship.turn(-5);
     }
     if(key == 'x' || key == 'X'){
       ship.accelerate(3);
     }
     if(key == 'h' || key == 'H'){
       ship.setXSpeed(0);
       ship.setYSpeed(0);
       ship.myCenterX = (int)(Math.random()*501);
       ship.myCenterY = (int)(Math.random()*501);
       ship.myPointDirection = (int)(Math.random()*360);
     }
  }
