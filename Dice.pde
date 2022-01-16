int sum, cumulative;
void setup(){
  size(500,500);
  noLoop();
}
void draw(){
  background(130);
  for (int y=0;y<5;y++){
    for (int x=0;x<5;x++){
      Die die=new Die(x*90+30,y*90+20,80,12);
      die.show();
      sum+=die.roll;
      cumulative+=die.roll;
    }
  }
  fill(255,255,255,sum*4-200); 
  textSize(150);
  textAlign(CENTER);
  text(sum,250,290);
  fill(0);
  textSize(16);
  text("Cumulative: "+cumulative,250,485);
}
void mousePressed(){
  redraw();
  sum=0;
}
class Die{
  int x,y,size,roll,dotSize;
  Die(int x,int y,int size,int dotSize){
    this.x=x;
    this.y=y;
    this.size=size;
    this.dotSize=dotSize;
    this.roll=(int)(Math.random()*6+1);
  }
  void show(){
    fill(0);
    rect(x,y,size,size,16);
    fill((int)(Math.random()*255),(int)(Math.random()*255),0);
    if (roll==1){
      ellipse(x+size/2,y+size/2,dotSize,dotSize);
    } else if (roll==2){
      ellipse(x+size/4,y+size/2,dotSize,dotSize);
      ellipse(x+size*3/4,y+size/2,dotSize,dotSize);
    } else if (roll==3){
      ellipse(x+size/2,y+size/4,dotSize,dotSize);
      ellipse(x+size/4,y+size*3/4,dotSize,dotSize);
      ellipse(x+size*3/4,y+size*3/4,dotSize,dotSize);
    } else if (roll==4){
      ellipse(x+size/4,y+size/4,dotSize,dotSize);
      ellipse(x+size*3/4,y+size/4,dotSize,dotSize);
      ellipse(x+size/4,y+size*3/4,dotSize,dotSize);
      ellipse(x+size*3/4,y+size*3/4,dotSize,dotSize);
    } else if (roll==5){
      ellipse(x+size/4,y+size/4,dotSize,dotSize);
      ellipse(x+size*3/4,y+size/4,dotSize,dotSize);
      ellipse(x+size/2,y+size/2,dotSize,dotSize);
      ellipse(x+size/4,y+size*3/4,dotSize,dotSize);
      ellipse(x+size*3/4,y+size*3/4,dotSize,dotSize);
    } else {
      ellipse(x+size/4,y+size/4,dotSize,dotSize);
      ellipse(x+size/4,y+size/2,dotSize,dotSize);
      ellipse(x+size/4,y+size*3/4,dotSize,dotSize);
      ellipse(x+size*3/4,y+size/4,dotSize,dotSize);
      ellipse(x+size*3/4,y+size/2,dotSize,dotSize); 
      ellipse(x+size*3/4,y+size*3/4,dotSize,dotSize); 
    }
  }
}
