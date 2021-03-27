class Workspace{
   PShape gizmo; 
   PShape grid; 
   public Workspace(int size){
    this.gizmo=gizmo();
    this.grid = grid(size);
   }
   PShape gizmo(){
      PShape shape = createShape();
      shape.beginShape(LINES);
      shape.noFill();
      shape.strokeWeight(3.0f);
  
      shape.stroke(0xAAFF3F7F);
      shape.vertex(200,0,0);
      shape.vertex(0,0,0);
  
      shape.stroke(0xAA3FFF7F);
      shape.vertex(0,200,0);
      shape.vertex(0,0,0);
  
      shape.stroke(0xAA3F7FFF);
      shape.vertex(0,0,200);
      shape.vertex(0,0,0);
      shape.endShape();
      return shape;
   }
   PShape grid(int size){
     PShape shape = createShape();
    shape.beginShape(QUADS);
    shape.noFill();
    shape.stroke(0x77836C3D);
    shape.strokeWeight(0.5f);
    for(int i=-size/2; i<size/2; i+=100){
      for(int j=-size/2; j<size/2; j+=100){
        shape.vertex(i,j);
        shape.vertex(i+100,j);
        shape.vertex(i+100,j+100);
        shape.vertex(i,j+100);
      }
    }
    shape.endShape();
    return shape;
   }

   public void update(){
     shape(this.gizmo);
     shape(this.grid);
     // 3D camera (X+ right / Z+ top / Y+ Front)
     camera(
         this.x, -this.y, this.z,
         0, 0, 0,
         0, 0, -1
         );

   }
   /**
* Toggle Grid & Gizmo visibility.
*/
void toggle() {
this.gizmo.setVisible(!this.gizmo.isVisible());
}


}
