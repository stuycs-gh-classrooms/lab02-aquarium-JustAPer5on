class Bird extends Animal {
  
  Bird(int x, int y, int w, int h, int t) {
    super(x, y, w, h, t);
  }
  
  void display() {
    fill(255, 0, 255);
    rect(ax, ay, aw, ah);
  }
  
  void moveAnimals() {
   if (ax >= width - aw/2 || ax <= aw/2) {
        axs *= -1;
   }
   if (ay >= 50 - aw/2 || ay <= aw/2) {
         ays *= -1;
   }
   ax += axs;
   ay += ays;
  }
  
  void addAnimal(int x, int y) {
      a[e] = new Animal(x, y, 25, 10, 0);
  }
}
