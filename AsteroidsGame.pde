Star[] luna = new Star[100];
Spaceship ship = new Spaceship();
ArrayList <Bullet> shot = new ArrayList <Bullet>();
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
public void setup(){
  size(500,500);
  background(0);
  for(int i = 0; i<luna.length; i++){
    luna[i] = new Star();
  }
    for(int i = 0; i<50; i++){
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
    if(dist((float)ship.myCenterX, (float)ship.myCenterY, (float)rock.get(i).myCenterX, (float)rock.get(i).myCenterY)<20){
      rock.remove(i);
      i--;
    }
  }
  for(int i = 0; i<shot.size(); i++){
    shot.get(i).move();
    shot.get(i).show();
    
  }
  for(int i = 0; i<rock.size(); i++){
    for(int j = 0; j<shot.size(); j++){
      if(dist((float)shot.get(j).myCenterX, (float)shot.get(j).myCenterY, (float)rock.get(i).myCenterX, (float)rock.get(i).myCenterY)<20){
      rock.remove(i);
      i--;
      shot.remove(j);
      break;
    }
    if(shot.get(j).myCenterX > 495 || shot.get(j).myCenterX<5|| shot.get(j).myCenterY<5){
      shot.remove(j);
    }
    }
  }
  ship.show();
  ship.move();
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
     if(key == ' '){
       shot.add(new Bullet(ship));
     }
  }
