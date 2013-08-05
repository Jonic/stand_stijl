//A Mondrian-esque grid, generatively created by recursively dividing rectangles as specifid by the user
class Grid {

  int smallestUnit = 50;

  ArrayList<Rectangle> rectangles;
  ArrayList<TextBlock> textBlocks;

  Grid(int initialWidth, int initialHeight, int howManyLevelsOfRecursiveSplit) {
    rectangles = new ArrayList<Rectangle>();
    Rectangle firstRectangle = new Rectangle(0, 0, 1, initialWidth, initialHeight);
    recursiveSplit(firstRectangle, howManyLevelsOfRecursiveSplit); //split initial rectangle 

    textBlocks = new ArrayList<TextBlock>();
    for (int i = 0; i < rectangles.size(); i++) {
      textBlocks.add(new TextBlock(rectangles.get(i)));
    }
  }

  ArrayList<TextBlock>  getTextBlocks() {
    return textBlocks;
  }

  void recursiveSplit(Rectangle someRectangle, int howManySplits) {
    //base case: if already fractured this rect the number of times originally specified
    if (someRectangle.getWidth() <= smallestUnit*2 || someRectangle.getHeight() <= smallestUnit*2 || howManySplits <= 0) {

      //Rectangle is done, add it to the collection to be drawn
      rectangles.add(someRectangle);
    } 
    else { // base case isn't met, split the rectangle some more!

      if (int(random(2)) == 0) {

        //cut by width 
        int whereToCut = int(random(smallestUnit, someRectangle.getWidth() - smallestUnit + 1));

        int leftRectX = someRectangle.getX();
        int leftRectY = someRectangle.getY();
        int leftRectWidth = whereToCut;
        int leftRectHeight = someRectangle.getHeight(); 
        int leftRectZ = int(random(1, 2));
        Rectangle leftRect = new Rectangle(leftRectX, leftRectY, leftRectZ, leftRectWidth, leftRectHeight);

        int rightRectX = someRectangle.getX() + whereToCut;
        int rightRectY = someRectangle.getY();
        int rightRectWidth = someRectangle.getWidth() - whereToCut;
        int rightRectHeight = someRectangle.getHeight(); 
        int rightRectZ = int(random(1, 2));
        Rectangle rightRect = new Rectangle(rightRectX, rightRectY, rightRectZ, rightRectWidth, rightRectHeight);

        recursiveSplit(leftRect, howManySplits - 1);
        recursiveSplit(rightRect, howManySplits - 1);
      } 
      else {
        //cut by height
        int whereToCut = int(random(smallestUnit, someRectangle.getHeight() - smallestUnit + 1));

        int topRectX = someRectangle.getX();
        int topRectY = someRectangle.getY();
        int topRectWidth = someRectangle.getWidth();
        int topRectHeight = whereToCut; 
        int topRectZ = int(random(1, 2));
        Rectangle topRect = new Rectangle(topRectX, topRectY, topRectZ, topRectWidth, topRectHeight);

        int bottomRectX = someRectangle.getX();
        int bottomRectY = someRectangle.getY() + whereToCut;
        int bottomRectWidth = someRectangle.getWidth();
        int bottomRectHeight = someRectangle.getHeight() - whereToCut; 
        int bottomRectZ = int(random(1, 2));
        Rectangle bottomRect = new Rectangle(bottomRectX, bottomRectY, bottomRectZ, bottomRectWidth, bottomRectHeight);

        recursiveSplit(topRect, howManySplits - 1);
        recursiveSplit(bottomRect, howManySplits - 1);
      }
    }
  }
  
  public int size() {
    return textBlocks.size();
  }
  
  public TextBlock getTextBlock(int blockIndex) {
    if (blockIndex < textBlocks.size()) {
    return textBlocks.get(blockIndex);
    } else return null;
  }
}


