class Joypad {
  boolean upPressed, downPressed, leftPressed, rightPressed;

  Joypad() {
    upPressed = false;
    downPressed = false;
    leftPressed = false;
    rightPressed = false;
  }
  
  void keyPressed() {
    if (key == 'w' || keyCode == 'W') {
      this.upPressed = true;
      } else if (key == 's' || keyCode == 'S') {
        this.downPressed = true;
      } else if (key == 'a' || keyCode == 'A') {
        this.leftPressed = true;
      } else if (key == 'd' || keyCode == 'D') {
        this.rightPressed = true;
      }
  }
  
  void keyReleased() {
    if (key == 'w' || keyCode == 'W') {
      this.upPressed = false;
    } else if (key == 's' || keyCode == 'S') {
      this.downPressed = false;
    } else if (key == 'a' || keyCode == 'A') {
      this.leftPressed = false;
    } else if (key == 'd' || keyCode == 'D') {
      this.rightPressed = false;
    }
  }
}
