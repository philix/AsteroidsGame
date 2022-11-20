class Star{  
    private int sX, sY, sColor, sSize;
    Star(){
      sX = (int)(Math.random()*501);
      sY = (int)(Math.random()*501);
      sColor = color((int)(Math.random()*200),(int)(Math.random()*200),(int)(Math.random()*200));
      sSize = 7;
    }
    void show(){
      fill(sColor);
      noStroke();
      ellipse(sX,sY,sSize,sSize);
    }
} 
