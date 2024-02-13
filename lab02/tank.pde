class Tank extends Animal {
  int txpos;
  int typos;
  int twidth;
  int theight;
  int fheight;
  
  Tank(int x, int y, int w, int h, int f) {
    super(x, y, w, h, f);
  }
  
  void tankdisplay(int x, int y, int w, int h, int f) {
    txpos = x;
    typos = y;
    twidth = w;
    theight = h;
    fheight = f;  
    fill(0, 0, 255);
    rect(txpos, typos, twidth, theight);
    fill(255, 255, 255);
    rect(0, 0, twidth, typos);
    fill(150);
    rect(0, 500, 600, 100);
  }
}
