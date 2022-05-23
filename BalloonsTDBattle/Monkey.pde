public class Monkey {
  PImage image; //For creating the monkey image
  int attackSpeed;
  int attackRange;
  int attackStrength;
  int x; // The coordinates of the monkey
  int y;
  public Monkey(int xcoord, int ycoord) {
    //Default values for monkey stats except for x and y since those have to be determiend
    //by mouseClicked()
    image = loadImage("monkey.jpg");
    image.resize(25, 25);
    attackSpeed = 10;
    attackRange = 10;
    attackStrength = 10;
    x = xcoord;
    y = ycoord;
  }
  public Monkey(int speed, int range, int strength, int xcoord, int ycoord) {
    image = loadImage("monkey.jpg");
    image.resize(25, 25);
    attackSpeed = speed;
    attackRange = range;
    attackStrength = strength;
    x = xcoord;
    y = ycoord;
  }
  void display() {
    image(image,x,y);
  }
}
