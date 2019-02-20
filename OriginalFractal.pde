public void setup(){
  size(1000, 750);
  background(0);
}

public void draw(){
  fractal(26, 0, 0);
}

public void fractal(int len, int x, int y){
  int angleOne = x + 
  if(len <= 25){
    stroke(255);
    rect(425, 300, 150, 150);
  } else {
    line(x+ 500, y + 300, x + cos(angleOne) * length);
    fractal(len - 1, x, y);
  }
}
