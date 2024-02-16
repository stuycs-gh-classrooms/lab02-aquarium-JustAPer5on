Tank t;
Animal[] a;
Bird[] b;
Crab[] c;
Frog[] ff;
Shark[] s;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;

int d;
int e;
int f;
int g;
int h;

void setup() {
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.tankdisplay(tankX, tankY, tankW, tankH, floorH);
  a = new Animal[10];
  b = new Bird[5];
  c = new Crab[3];
  ff = new Frog[5];
  s = new Shark[2];
  for (int i = 0; i < a.length; i++) {
    a[i] = new Animal(int(random(15, width - 15)),int(random(65, 485)),15,15,0);
  }
  for (int j = 0; j < b.length; j++) {
    b[j] = new Bird(int(random(45, width - 45)),int(random(10, 40)),25,10,0);
  }
  for (int k = 0; k < c.length; k++) {
    c[k] = new Crab(int(random(45, width - 45)),int(random(530, 570)),45,30,0);
  }
  for (int l = 0; l < ff.length; l++) {
    ff[l] = new Frog(int(random(20, width - 20)),int(random(70, 580)),20,20,0);
  }
  for (int m = 0; m < s.length; m++) {
    s[m] = new Shark(int(random(60, width - 60)),int(random(70, 480)),60,20,0);
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
  for (int l = 0; l < ff.length; l++) {
    ff[l].moveAnimals();
    ff[l].display();
  }
  for (int m = 0; m < s.length; m++) {
    s[m].moveAnimals();
    s[m].display();
  }
}

void mouseClicked() {
  d = int(random(0, 10));
  e = int(random(0, 5));
  f = int(random(0, 3));
  g = int(random(0, 5));
  h = int(random(0, 2));
  if (mouseX > 15 && mouseX < width - 15 && mouseY > 65 && mouseY < 485) {
    a[d].addAnimal(mouseX, mouseY);
  }
  if (mouseX > 10 && mouseX < width - 10 && mouseY > 10 && mouseY < 40) {
    b[e].addAnimal(mouseX, mouseY);
  }
  if (mouseX > 30 && mouseX < width - 30 && mouseY > 530 && mouseY < 570) {
    c[f].addAnimal(mouseX, mouseY);
  }
  if (mouseX > 20 && mouseX < width - 20 && mouseY > 70 && mouseY < 580) {
    ff[g].addAnimal(mouseX, mouseY);
  }
  if (mouseX > 60 && mouseX < width - 60 && mouseY > 70 && mouseY < 480) {
    s[h].addAnimal(mouseX, mouseY);
  }
}
