int sum, cumulative;
void setup(){
  size(500,510);
  noLoop();
}
void draw(){
  background(130);
  for (int i=0;i<8;i++){
    for (int j=0;j<8;j++){
      Die die=new Die(i*60+10,j*60+10,55,10);
      die.roll();
      die.show();
      sum+=die.roll;
      cumulative+=die.roll;
    }
  }
  fill(255,255,255,sum*2-300); 
  textSize(120);
  textAlign(CENTER);
  text(sum,250,290);
  fill(0);
  textSize(14);
  text("Cumulative: "+cumulative,250,505);
}
void mousePressed(){
  redraw();
  //sum=0;
}
class Die{
  int x,y,size,roll,dotSize;
  Die(int x,int y,int size,int dotSize){
    this.x=x;
    this.y=y;
    this.size=size;
    this.dotSize=dotSize;
  }
  void roll(){
    roll=(int)(Math.random()*6+1);
  }
  void show(){
    fill(0);
    rect(x,y,size,size,12);
    fill((int)(Math.random()*255),(int)(Math.random()*255),0);
    switch (roll){
      case 1:
        ellipse(x+size/2,y+size/2,dotSize,dotSize);
        break;
      case 2:
        ellipse(x+size/4,y+size/2,dotSize,dotSize);
        ellipse(x+size*3/4,y+size/2,dotSize,dotSize);
        break;
      case 3:
        ellipse(x+size/2,y+size/4,dotSize,dotSize);
        ellipse(x+size/4,y+size*3/4,dotSize,dotSize);
        ellipse(x+size*3/4,y+size*3/4,dotSize,dotSize);
        break;
      case 4:
        ellipse(x+size/4,y+size/4,dotSize,dotSize);
        ellipse(x+size*3/4,y+size/4,dotSize,dotSize);
        ellipse(x+size/4,y+size*3/4,dotSize,dotSize);
        ellipse(x+size*3/4,y+size*3/4,dotSize,dotSize);
        break;
      case 5:
        ellipse(x+size/4,y+size/4,dotSize,dotSize);
        ellipse(x+size*3/4,y+size/4,dotSize,dotSize);
        ellipse(x+size/2,y+size/2,dotSize,dotSize);
        ellipse(x+size/4,y+size*3/4,dotSize,dotSize);
        ellipse(x+size*3/4,y+size*3/4,dotSize,dotSize);
        break;
      case 6:
        ellipse(x+size/4,y+size/4,dotSize,dotSize);
        ellipse(x+size/4,y+size/2,dotSize,dotSize);
        ellipse(x+size/4,y+size*3/4,dotSize,dotSize);
        ellipse(x+size*3/4,y+size/4,dotSize,dotSize);
        ellipse(x+size*3/4,y+size/2,dotSize,dotSize); 
        ellipse(x+size*3/4,y+size*3/4,dotSize,dotSize); 
        break;
    }
  }
}
