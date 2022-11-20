Star[] artemis = new Star[100];
Spaceship ship = new Spaceship();
public void setup(){
  size(500,500);
  background(0);
  for(int i = 0; i<artemis.length; i++){
    artemis[i] = new Star();
  }
}
public void draw(){
  background(0);
  for(int i = 0; i<artemis.length; i++){
    artemis[i].show();
  }
  ship.show();
  ship.move();
}
