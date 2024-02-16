class Animal {
  int ax;
  int ay;
  int aw;
  int ah;
  int at;
  int axs;
  int ays;
  int i = 0;
  
  Animal(int x, int y, int w, int h, int t) {
    ax = x;
    ay = y;
    aw = w;
    ah = h;
    at = t;
    axs = 1 * (-1^int(random(1,3)));
    ays = 1 * (-1^int(random(1,3)));
  }
  
  void display() {
    fill(0, 255, 255);
    rect(ax, ay, aw, ah);
  }
  
  void moveAnimals() {
     if (ax >= width - aw/2 || ax <= aw/2) {
        axs *= -1;
     }
     if (ay >= 500 - aw/2 || ay <= 50 + aw/2) {
         ays *= -1;
      }
     ax += axs;
     ay += ays;
  }
  
  void addAnimal(int x, int y) {
      a[d] = new Animal(x, y, 15, 15, 0);
  }
}
