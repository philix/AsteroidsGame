class Asteroid extends Floater{
 protected double rotSpeed;
 public Asteroid(){
    rotSpeed = 5;
    corners = 6;
    xCorners = new int[]{-11,7,13,6,-11,-5};
    yCorners = new int[]{-8,-8,0,10,8,0};
    myCenterX = (int)(Math.random()*501);
    myCenterY = (int)(Math.random()*501);
    myColor = color(105,105,105);
    myPointDirection = 100;
    myXspeed = (int)(Math.random()*4)-2;
    myYspeed = (int)(Math.random()*4)-2;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getRockCenterX(){
      return myCenterX;
    }
    public void setRockCenterX(double centerX){
      myCenterX = centerX;
    }
    public double getRockCenterY(){
      return myCenterY;
    }
    public void setRockCenterY(double centerY){
      myCenterY = centerY;
    }
}
