class Hud {
      private PMatrix3D hud;
      Hud() {
      // Should be constructed just after P3D size() or fullScreen()
      this.hud = g.getMatrix((PMatrix3D) null);
      }
      privatevoid begin() {
           g.noLights();
           g.pushMatrix();
           g.hint(PConstants.DISABLE_DEPTH_TEST);
           g.resetMatrix();
           g.applyMatrix(this.hud);
       }
      private void end() {
           g.hint(PConstants.ENABLE_DEPTH_TEST);
           g.popMatrix();
      }
}
