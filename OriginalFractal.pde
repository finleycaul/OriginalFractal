void setup()
{
  size(600,600);
  ellipseMode(CENTER);
}
public void draw()
{
  flower(width*0.5, height*0.5, width*0.3, 230, 238);
}

public void flower(float x, float y, float size, int r, int g)
{
  noStroke();
  fill(r, g, 255);
  ellipse(x,y,size,size);
  if(size>20){
    fill(r, g, 255);
    flower(x-size*0.5,y-0.5*size,size*0.4, r-18, g-25);
    flower(x+size*0.5,y-0.5*size,size*0.4, r-26, g-25);
    flower(x-size*0.5,y+0.5*size,size*0.4, r-26, g-25);
    flower(x+size*0.5,y+0.5*size,size*0.4, r-26, g-25);
  }
  fill(230,242,255);
  ellipse(x-180,y-180,size*0.5, size*0.5);
  ellipse(x+180,y-180,size*0.5, size*0.5);
  ellipse(x+180,y+180,size*0.5, size*0.5);  
  ellipse(x-180,y+180,size*0.5, size*0.5);
}
