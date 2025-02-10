public int baseC = 20; 
public void setup()
{
size(600,600); 
}
public void draw()
{
  fill(0,0,0); 
sierpinski(100,500, 400);  
}
public void mouseDragged()//optional
{
baseC += 1;
}

//function for an equilateral triangle with left corner at (x,y)
public void equiTri(int x, int y, int len){
  triangle((float)x,(float)y, (float)(x + len),(float)y, (float)(x + len/2), (float)(y - len/2 *Math.sqrt(3)));
}

public void sierpinski(int x, int y, int len){
if(len<= baseC){
  equiTri(x, y, len);
}else{
  sierpinski(x, y, len/2);
  sierpinski(x + len/2, y, len/2);
  sierpinski(x + len/4, y - len/2, len/2); 
}
}
