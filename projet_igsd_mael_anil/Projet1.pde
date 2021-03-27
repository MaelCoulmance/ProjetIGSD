Workspace workspace;

void setup() {
     // Display setup
    fullScreen(P3D);
    smooth(8);
    frameRate(60);
    // Initial drawing
    background(0x40);
    // Prepare local coordinate system grid & gizmo
    this.workspace= new Workspace(250*100);
    // Make camera move easier
    hint(ENABLE_KEY_REPEAT);

}


void draw() {
camera(
0, 2500, 1000,
0, 0, 0,
0, 0, -1
);
 this.workspace.update();

}
void keyPressed() {
     switch (key) {
       case 'w':
       case 'W':
       // Hide/Show grid & Gizmo
       this.workspace.toggle();
       break;
                  }
              }
