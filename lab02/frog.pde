class Frog extends Animal {
  
    Frog(int x, int y, int w, int h, int t) {
    super(x, y, w, h, t);
  }
  
  void display() {
    fill(0, 255, 0);
    rect(ax, ay, aw, ah);
  }
  
  void moveAnimals() {
    if (ax >= width - aw/2 || ax <= aw/2) {
      axs *= -1;
    }
    if (ay >= 600 - aw/2 || ay <= 50 + aw/2) {
      ays *= -1;
    }
    ax += axs;
    ay += ays;
  }
  
  void addAnimal(int x, int y) {
      a[g] = new Animal(x, y, 20, 20, 0);
  }
}
