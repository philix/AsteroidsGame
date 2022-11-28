Star[] luna = new Star[100];
Spaceship ship = new Spaceship();
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
public void setup(){
  size(500,500);
  background(0);
  for(int i = 0; i<luna.length; i++){
    luna[i] = new Star();
  }
    for(int i = 0; i<30; i++){
    Asteroid stone = new Asteroid();
    rock.add(stone);
  }
}
public void draw(){
  background(0);
  for(int i = 0; i<luna.length; i++){
    luna[i].show();
  }
  for(int i = 0; i<30; i++){
    rock.get(i).show();
    rock.get(i).move();
  }
  ship.show();
  ship.move();
}
