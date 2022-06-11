public class buttonsList {
  ArrayList<Buttons> buttons;
  
  public buttonsList() {
    buttons = new ArrayList<Buttons>();
  }
  
  void display() {
    for (int i = 0; i < buttons.size(); i++) {
      buttons.get(i).display();    
    }
  }
  int findButtonAt(int x, int y) {
    for (int i = 0; i < buttons.size(); i++) {
      if (buttons.get(i).inRange(x, y)) {
        return i;
      }
    }
    return -1;
  }
  
  void add(Buttons button) {
    buttons.add(button);
  }
  void add(int index, Buttons button) {
    buttons.add(index, button);  
  }
  
}

public class balloonButtonList extends buttonsList {
  ArrayList<balloonButton> buttons_;
  int yValue = 650;
  int xValue = 80;
  int spacing = 40;

  public balloonButtonList() {
    buttons_ = new ArrayList<balloonButton>();
    buttons_.add(new balloonButton(xValue, yValue, new redBalloon()));
    buttons_.add(new balloonButton(xValue+40, yValue, new blueBalloon()));
    buttons_.add(new balloonButton(xValue+(spacing*2), yValue, new greenBalloon()));
    buttons_.add(new balloonButton(xValue+(spacing*3), yValue, new yellowBalloon()));
    buttons_.add(new balloonButton(xValue+(spacing*4), yValue, new pinkBalloon()));
    buttons_.add(new balloonButton(xValue+(spacing*5), yValue, new blackBalloon()));
    buttons_.add(new balloonButton(xValue+(spacing*6), yValue, new whiteBalloon()));
    buttons_.add(new balloonButton(xValue+(spacing*7), yValue, new zebraBalloon()));
    buttons_.add(new balloonButton(xValue+(spacing*8), yValue, new leadBalloon()));
    buttons_.add(new balloonButton(xValue+(spacing*9), yValue, new rainbowBalloon()));
    buttons_.add(new balloonButton(xValue+(spacing*10), yValue, new ceramicBalloon()));
  }
  
  void spawnBalloon() {
    int i = findButtonAt(mouseX, mouseY); 
    if (i > -1) {
      buttons_.get(i).spawnBalloon();  
    }
  }
  


}
