class Bullet extends Floater{
  public Bullet(Spaceship ship){
    myCenterX = ship.getMyCenterX();
    myCenterY = ship.getMyCenterY();
    myXspeed = ship.getXSpeed();
    myYspeed = ship.getYSpeed();
    myPointDirection = ship.getPointDirection();
    myColor = color(255,255,255);
    accelerate(6);
  }
  public void show(){
    fill(myColor);
    ellipse((float)myCenterX,(float)myCenterY, 10,10);
  }
}
