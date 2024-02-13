Tank t;
Animal[] a;
Bird[] b;
Crab[] c;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;

int d;
int e;
int f;

void setup() {
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.tankdisplay(tankX, tankY, tankW, tankH, floorH);
  a = new Animal[10];
  b = new Bird[5];
  c = new Crab[3];
  for (int i = 0; i < a.length; i++) {
    a[i] = new Animal(int(random(15, width - 15)),int(random(65, 485)),15,15,0);
  }
  for (int j = 0; j < b.length; j++) {
    b[j] = new Bird(int(random(45, width - 45)),int(random(10, 40)),25,10,0);
  }
  for (int k = 0; k < c.length; k++) {
    c[k] = new Crab(int(random(45, width - 45)),int(random(530, 570)),45,30,0);
  }
}//setup


void draw() {
  background(150);
  t.moveAnimals();
  t.display();
  t.tankdisplay(tankX, tankY, tankW, tankH, floorH);
  for (int i = 0; i < a.length; i++) {
    a[i].moveAnimals();
    a[i].display();
  }
  for (int j = 0; j < b.length; j++) {
    b[j].moveAnimals();
    b[j].display();
  }
  for (int k = 0; k < c.length; k++) {
    c[k].moveAnimals();
    c[k].display();
  }
}

void mouseClicked() {
  d = int(random(0, 10));
  e = int(random(0, 5));
  f = int(random(0, 3));
  if (mouseX > 15 && mouseX < width - 15 && mouseY > 10 && mouseY < 40) {
    a[d].addAnimal(mouseX, mouseY);
  }
  if (mouseX > 10 && mouseX < width - 10 && mouseY > 50 && mouseY < 500) {
    b[e].addAnimal(mouseX, mouseY);
  }
  if (mouseX > 30 && mouseX < width - 30 && mouseY > 530 && mouseY < 570) {
    c[f].addAnimal(mouseX, mouseY);
  }
}
