public void setup(){
  size(800,800);
  background(255);
}
public void draw(){
  myFractal(400,400,400);
}
public void mousePressed(){
  fill ((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
}
public void myFractal(int x, int y, int size){
  ellipse(x,y,size,size);
  if(size>5){
    myFractal(x-(int)Math.cos(x),y-size/2,size/2);
    myFractal(x+(int)Math.sin(x),y+size/2,size/2);
    myFractal(x+(int)Math.sin(x),y-size/2,size/2);
    myFractal(x-(int)Math.cos(x),y+size/2,size/2);
  }
}
