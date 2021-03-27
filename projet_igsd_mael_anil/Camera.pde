class Camera{
  float longitude;
  float colatitude;
  float radius; 
  float x;
  float y;
  float z;
  public Camera(){
    this.longitude=PI*3/4;
    this.latitude=PI/2;
    this.radius=1000;
    this.x=radius*sin(longitude)*cos(colatitude);
    this.y=radius*sin(longitude)*sin(colatitude);
    this.z=radius*cos(longitude);
  }
  public void adjustRadius(float offset){
    this.radius=this.radius+offset;
  }
  public void adjustLongitude(float delta){
    this.longitude=this.longitude+delta;
  }
  
  public void adjustColatitude(float delta){
    this.colatitude=this.colatitude+delta;
  }
  
void keyPressed() {
  if (key == CODED) {
   switch (keyCode) {
   case UP:
   adjustRadius(100);
   break;
   case DOWN:
   adjustRadius(-100);
   break;
   case LEFT:
   adjustLongitude(-100);
   break;
   case RIGHT:
   adjustLongitude(100);
   break;
    }
   } else {
  switch (key) {
  case '+':
  
  break;
  case '-':
 
  break;
     }
   }
}
