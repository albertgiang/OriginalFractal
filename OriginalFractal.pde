public void setup(){
  size(1000, 750);
  background(0);
}

public void draw(){
  fractal(26);
}

public void fractal(int len){
  if(len <= 25){
    stroke(255);
    rect(425, 325, 150, 150);
  } else {
    line(500, 375, (int)(1001 * Math.random()), (int)(751 * Math.random()));
    fractal(len - 1);
  }
}
