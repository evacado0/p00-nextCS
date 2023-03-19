class buttons {
  
  //instance variables
  int x;
  int y;
  String name;
  
  buttons() {
    x=0;
    y=0;
  }
  
  buttons(int _x, int _y) {
    x = _x;
    y = _y;
  }

 void drawDelete(int x,int y,int l,int w) {
    fill(0);
    rect(x,y,l,w);
    fill(255);
    textSize(w*0.7);
    text("Delete", x,y+w);
  }
  
  void drawShuffle(int x,int y,int l,int w) {
    fill(0);
    rect(x,y,l,w);
    fill(255);
    textSize(w*0.7);
    text("Shuffle", x,y+w);
  }
  
  void drawEnter(int x,int y,int l,int w) {
    fill(0);
    rect(x,y,l,w);
    fill(255);
    textSize(w*0.7);
    text("Enter", x,y+w);
  }
}
