PShape gizno;

void settings() 
{
  pixelDensity(displayDensity());
  size(1080, 1080, P3D);
  smooth(8);
}

void setup()
{
  // Gizno
  gizno = createShape();
  gizno.beginShape(LINES);
  gizno.noFill();
  gizno.strokeWeight(3.0f);
  
  // RED X
  gizno.stroke(0xAAFF3F7F);
  gizno.vertex(280, 0, 0);
  gizno.vertex(0,0,0);
  
  // GREEN Y
  gizno.stroke(0xAA3FFF7F);
  gizno.vertex(0, 280, 0);
  gizno.vertex(0, 0, 0);
  
  // BLUE Z
  gizno.stroke(0xAA3F7FFF);
  gizno.vertex(0, 0, 280);
  gizno.vertex(0, 0, 0);
  gizno.endShape();
}

void draw()
{
  background(10);
  perspective();
  camera(0, 280, 1808, 0, 0, 0, 0, 0, -1);
  shape(gizno);
}
