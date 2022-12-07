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
    public double getXSpeed(){
    return myXspeed;
    }
    public double getYSpeed(){
    return myYspeed;
    }
    public void setXSpeed(double sX){
    myXspeed = sX;
  }
  public void setYSpeed(double sY){
    myYspeed = sY;
  }
  public void setPointDirection(double PD){
    myPointDirection = PD;
  }
    public double getPointDirection(){
      return myPointDirection;
    }
  }
