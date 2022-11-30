Star[] luna = new Star[100];
Spaceship ship = new Spaceship();
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
public void setup(){
  size(500,500);
  background(0);
  for(int i = 0; i<luna.length; i++){
    luna[i] = new Star();
  }
    for(int i = 0; i<20; i++){
    Asteroid stone = new Asteroid();
    rock.add(stone);
  }
}
public void draw(){
  background(0);
  for(int i = 0; i<luna.length; i++){
    luna[i].show();
  }
  for(int i = 0; i<rock.size(); i++){
    rock.get(i).show();
    rock.get(i).move();
  }
  for(int i = 0; i<rock.size(); i++){
    if(dist((float)ship.myCenterX, (float)ship.myCenterY, (float)rock.get(i).myCenterX, (float)rock.get(i).myCenterY)<20){
      rock.remove(i);
      i--;
    }
  }
  ship.show();
  ship.move();
}
