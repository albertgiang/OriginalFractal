private double fractionLength = 0.8;
private int smallestBranch = 10;
private double branchAngle = 0;

public void setup(){
  size(1000, 750);
  background(0);
}

public void draw(){
  fill(11, 102, 35);
  
  fractal(575, 375, 50, 0 * Math.PI / 2);
  fractal(500, 462, 50, 1 * Math.PI / 2);
  fractal(425, 375, 50, 2 * Math.PI / 2);
  fractal(500, 287, 50, 3 * Math.PI / 2);
  
  for(int i = 0; i < 4; i++){
    fractal(150, 187, 50, i * Math.PI / 2);
    fractal(850, 187, 50, i * Math.PI / 2);
    fractal(150, 563, 50, i * Math.PI / 2);
    fractal(850, 563, 50, i * Math.PI / 2);
  }
  
  ellipse(500, 375, 175, 175);
  fill(87,59,12);
  ellipse(500, 375, 150, 150);
  
  branchAngle += 0.01;
  if(branchAngle >= 1){
    fill(0);
    rect(0, 0, 1000, 750);
    branchAngle = 0;
  }
}

public void fractal(int x, int y, double branchLength, double angle){
  double angle1, angle2;
  
  angle1 = angle + branchAngle;
  angle2 = angle - branchAngle;
  
  branchLength *= fractionLength;
  
  int endX1 = (int)(branchLength * Math.cos(angle1) + x);
  int endY1 = (int)(branchLength * Math.sin(angle1) + y);
  int endX2 = (int)(branchLength * Math.cos(angle2) + x);
  int endY2 = (int)(branchLength * Math.sin(angle2) + y);
  
  if(branchLength <= smallestBranch){
    return;
  } else {
    if(branchLength <= 50){
      stroke(0, 255, 0);
    }
    
    line(x, y, endX1, endY1);
    line(x, y, endX2, endY2);
    fractal(endX1, endY1, branchLength, angle1);
    fractal(endX2, endY2, branchLength, angle2);
  }
}
