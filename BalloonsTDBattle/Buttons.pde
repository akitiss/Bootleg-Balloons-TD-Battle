public class Buttons {
  float x;
  float y;
  float l;
  float w;
  int MODE;
  String caption;
  int modeLimit;
  color c;

  public Buttons (float xcoord, float ycoord, String Caption, int limit, color colors) {
    x = xcoord;
    y = ycoord;
    l = 50;
    w = 50;
    MODE = 0;
    caption = Caption;
    modeLimit = limit;
    c = colors;
  }
  void display() {
    fill(c);
    rect(x, y, w, l);
    fill(0);
    textAlign(CENTER);
    text(caption, x + (w/2), y + (l/2));
  }
  void clicked( int xcoord, int ycoord) {
    if (xcoord > x && xcoord < x+w && ycoord > y && ycoord<y+l) {
      MODE++;
      if (MODE == modeLimit) {
        MODE = 0;
      }
    }
  }
  int getMode() {
    return MODE;
  }
  void setCaption(String c){
    caption = c;
  }
  
}
