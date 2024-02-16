class Shark extends Animal {
  
    Shark(int x, int y, int w, int h, int t) {
    super(x, y, w, h, t);
  }
  
  void display() {
    fill(0, 0, 255);
    rect(ax, ay, aw, ah);
  }
  
  void moveAnimals() {
    if (ax >= width - aw/8 || ax <= aw/8) {
      axs *= -1;
    }
    if (ay >= 500 - aw/2 || ay <= 50 + aw/2) {
      ays *= -1;
    }
    ax += axs;
    ay += ays;
  }
  
  void addAnimal(int x, int y) {
      a[h] = new Animal(x, y, 60, 20, 0);
  }
}
