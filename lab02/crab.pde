class Crab extends Animal {
  
  Crab(int x, int y, int w, int h, int t) {
    super(x, y, w, h, t);
  }
  
  void display() {
    fill(255, 0, 0);
    rect(ax, ay, aw, ah);
  }
  
  void moveAnimals() {
    if (ax >= width - aw/8 || ax <= aw/8) {
      axs *= -1;
    }
    if (ay >= height - aw/2 || ay <= 500 + aw/8) {
      ays *= -1;
    }
    ax += axs;
    ay += ays;
  }
  
  void addAnimal(int x, int y) {
      a[f] = new Animal(x, y, 45, 30, 0);
  }
}
