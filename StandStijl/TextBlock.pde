class TextBlock {

  color fillColor = color(255, 255, 255);

  Rectangle rectangle;
  String someText;

  TextBlock(int x, int y, int z, int blockWidth, int blockHeight) {
    rectangle = new Rectangle(x, y, z, blockWidth, blockHeight);
  }

  TextBlock(Rectangle rectangle) {
    this.rectangle = rectangle;
  }

  void setText(String someText) {
    this.someText = someText;
  }
  void setFillColor(color fillColor) {
    this.fillColor = fillColor;
  }

  void drawRectangle() {
    fill(fillColor);
    rect(rectangle.getX(), rectangle.getY(), rectangle.getWidth(), rectangle.getHeight());
  }

  void drawText(PFont font) {
    fill(color(0));
    textFont(font);
    textAlign(CENTER, CENTER);
    text(someText, rectangle.getX() + rectangle.getWidth()/2, rectangle.getY()+ rectangle.getHeight()/2);
  }

  Rectangle getRectangle() {
    return rectangle;
  }

  String getText() {
    return someText;
  }
}

