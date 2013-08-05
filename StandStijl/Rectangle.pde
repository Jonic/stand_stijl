class Rectangle {

  int x, y, z, width, height;

  Rectangle(int x, int y, int z, int width, int height) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.width = width;
    this.height = height;
  }

  int getWidth() {
    return width;
  }

  int getHeight() {
    return height;
  }

  int getX() {
    return x;
  }

  int getY() {
    return y;
  }

  void setX(int x) {
    this.x = x + x*z;
  }

  void setY(int y) {
    this.y = y + y*z;
  }

  void setZ(int z) {
    this.z = z;
  }
}

