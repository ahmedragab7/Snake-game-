PImage back;
PImage apple;
float x=50;
float y=50;
float x1=0;
float y1=0;
int score=0;
char c=0;
float cx=0;
float cy=0;
float tempx1=0;
float tempy1=0;
int t=0;
ArrayList <Ring> rings=new ArrayList<Ring>();
void setup(){
  size(1280,720);
   
   back=loadImage("maxresdefault.jpg");
   apple=loadImage("s.jpg");
}
void draw()
{
image(back,0,0);
  image(apple,x,y);
 // rings.clear();
  rect(x1,y1,20,20);
  //rect(tempx1,tempy1,20,20);
   for (Ring g:rings)
  {
   
     g.show(tempx1,tempy1);
    if(t==1){
 
 tempy1=tempy1-20;
 }
 else if(t==2){
 tempx1=tempx1-20;

 }
 else if(t==3){
 
 tempy1=tempy1+20;
 }
 else if(t==4){
 
 tempx1=tempx1+20;
 }
    
  }
 textSize(40);
   text("your score is : "+score,50,50);
  if ((x1>=x) && (x1<=(x+apple.width)))
  {
    if ((y1>=y) && (y1<=(y+apple.height)))
  {
    
  x=random(0,900);
  y=random(0,700);
  score++;
  Ring g=new Ring(x1+30,y1+30);
  rings.add(g);
  }
  }
 image(apple,x,y);
  if(t==1){
 tempx1=x1;
 tempy1=y1-20;
 }
 else if(t==2){
 tempx1=x1-20;
 tempy1=y1;
 }
 else if(t==3){
 tempx1=x1;
 tempy1=y1+20;
 }
 else if(t==4){
 tempx1=x1+20;
 tempy1=y1;
 }
 if(c=='d')
 {
 y1=y1+2;
 t=1;
 if(y1>=720) y1=0;
 }
 if(c=='r')
 {
 x1=x1+2;
 t=2;
  if(x1>=1280) x1=0;
 }
 if(c=='u')
 {
 y1=y1-2;
 t=3;
 if(y1<=0) y1=720;
 }
 if(c=='l')
 {
 x1=x1-2;
 t=4;
 if(x1<=0) x1=1280;
 }

}
void keyPressed()
{
  if (key==CODED)
  {
    if (keyCode==DOWN)
    {
    c='d';
    
    }
     if (keyCode==LEFT)
    {
    c='l';
    
    }
     if (keyCode==UP)
    {
    c='u';
    
    }
     if (keyCode==RIGHT)
    {
    c='r';
    
    }
    
    
  }
  
  
  
  
}