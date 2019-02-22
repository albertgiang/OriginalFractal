private double fractionLength = 0.8;
private int smallestBranch = 10;
private double branchAngle = .2;

public void setup(){
  size(1000, 750);
  background(0);
}

public void draw(){
  fill(11, 102, 35);
  ellipse(500, 375, 175, 175);
  fill(87,59,12);
  ellipse(500, 375, 150, 150);
  fractal(26, 0, 0);
}

public void fractal(int x, int y, double branchLength, double angle){
  
}
