/* 
 Stand Stijl
 by Chris Novello
 chrisnovello.com
 
 2013 note:
 This is rough&quick code that I wrote a fewcolorModifier2ears back when I was learning to program. 
 I figure others might like to tinker with it, just be warned that my design is from when I was starting and is kind of clumsy. 
 
 You'll need the oscP5 library.
 http://www.sojamo.de/libraries/oscP5/
 
 I've also released the code because it makes a quick way to change simple things like OSC ports & hosts, as well as the screen resolution.
 */

import oscP5.*;
import netP5.*;
//NetAddress myRemoteLocation;
OscP5 oscP5;

int cameraX = 50;
int cameraY = 50;

Grid grid; //a Mondrian-esque pattern of blocks. 
int numberOfRectangleDivisions = 10; //how many recursive rectangle divisons to use when generating a new grid 
int gridWidth = 600; //total width of the grid
int gridHeight = 600; //total height of the grid

int drawMode = 4; //selects different draw styles for the grid
int strokeWidth = 10;

PFont centerFont;
String textToUseOnGrid;

//stray variables for color incrementing..
int colorModifier;
int colorModifier2;


//variables that get changed via OSC events:
boolean updateColors = true; 
boolean shouldStroke = false;
boolean shouldMakeNewGrid = false;
int textOffset; //number used for mo function that walks text around.
String incomingText = "";

void oscEvent(OscMessage theOscMessage) {

  String[] msgSplit = theOscMessage.addrPattern().split("/");

  if (msgSplit[1].equals("StandStijl")) {

    //Advances the color drawing routine for the various draw modes.
    if (msgSplit[2].equals("UpdateColors")) {
      if (theOscMessage.get(0).floatValue() == 1.0) {
        updateColors = true;
      }
    }

    //move the text through the grid
    else if (msgSplit[2].equals("ShiftText")) {
      if (theOscMessage.get(0).floatValue() == 1.0) {
        textOffset++;
      }
    }

    //send a string to this address to set the text 
    else if (msgSplit[2].equals("SetText")) {
      incomingText = theOscMessage.get(0).stringValue();
    }

    else  if (msgSplit[2].equals("GenerateNewGrid")) {
      if (theOscMessage.get(0).floatValue() == 1.0) {
        shouldMakeNewGrid = true;
      }
    }

    else if (msgSplit[2].equals("ChangeDrawMode")) {
      if (drawMode == 5) {
        drawMode = 0;
      }
      else {
        drawMode++;
      }
      updateColors = true;
    }

    else  if (msgSplit[2].equals("ToggleStroke")) {
      if (theOscMessage.get(0).floatValue() == 1.0) {
        shouldStroke = !shouldStroke;
      }
    }
  }
}

void setup() {
  size(gridWidth + cameraX*2, gridHeight + cameraY*2);
  frameRate(30);

  oscP5 = new OscP5(this, 8798);
  //myRemoteLocation = new NetAddress("127.0.0.1", 8799); 
  
  grid = new Grid(gridWidth, gridHeight, numberOfRectangleDivisions);
  centerFont = createFont("GillSans", 32);

  strokeWeight(strokeWidth);
}


void draw() {
  background (255);
  translate(cameraX, cameraY);

  //see if the OSC thread has changed the program's state:
  if (shouldStroke) {
    stroke(strokeWidth);
  } 
  else {
    noStroke();
  }
  //OSC messages can remotely make a new block set (aka a new Mondrian-style pattern)
  if (shouldMakeNewGrid) {
    grid = new Grid(gridWidth, gridHeight, numberOfRectangleDivisions);
    shouldMakeNewGrid = false;
  }
  textToUseOnGrid = incomingText;

  //now walk through the grid, update the text and colors, and then draw the grid.
  for (int i = 0; i < grid.size(); i++) {

    TextBlock currentTextBlock = grid.getTextBlock(i);

    //and update the positions of any letters in the grid (they might've moved and/or the text might've changed)
    int offSetIndex = (i + textOffset) % grid.size();
    if (offSetIndex < textToUseOnGrid.length()) {
      char asChars = textToUseOnGrid.charAt(offSetIndex);
      currentTextBlock.setText(Character.toString(asChars));
    } 
    else {
      currentTextBlock.setText(" ");
    }

    if (updateColors) { //if the colors have been told to change via OSC
      updateColor(currentTextBlock, drawMode, i);   //then decide the color of this block in the grid based on the drawmode. 
      //using the for loop index as a modifier but other color patterns could be generated with different values
    }

    //now draw the rectangle and text of this grid block
    grid.getTextBlock(i).drawRectangle();
    grid.getTextBlock(i).drawText(centerFont);
  }

  updateColors = false;
}


void updateColor(TextBlock textBlock, int mode, int modeModifier) {

  switch(mode) {

  case 0: //white
    textBlock.setFillColor(color(255));
    break;

  case 1: // Mondrian classic
    textBlock.setFillColor(color(255));

    if (int(random(5)) == 0) {
      textBlock.setFillColor(color(0, 0, 255));
    } 
    else if (int(random(10)) == 0) {
      textBlock.setFillColor(color(255, 0, 0));
    }
    else if (int(random(15)) == 0) {
      textBlock.setFillColor(color(255, 255, 0));
    }
    break;

  case 2: //Other color scheme Mondrian
    if (int(random(3)) == 0) {
      textBlock.setFillColor(color(255));
    } 
    if (int(random(10)) == 0) {
      textBlock.setFillColor(color(random(255), random(255), 0));
    } 
    break;

  case 3: //another Mondrian color scheme w/white
    textBlock.setFillColor(color(255));
    if (int(random(3)) == 0) {
      textBlock.setFillColor(color(255, 0, 0));
    } 
    if (int(random(10)) == 0) {
      textBlock.setFillColor(color(255, 0, 255));
    }
    break;

  case 4: // persists and fades
    colorModifier++;
    textBlock.setFillColor(color(colorModifier + 5*modeModifier, colorModifier2 + 5 * modeModifier, random(255)));
    if (colorModifier > 255) {
      colorModifier=0 ;
    }
    break;

  case 5: //persists and fades alt
    colorModifier++;
    textBlock.setFillColor(color(colorModifier++ + 5*modeModifier, random(255), random(255)));
    if (colorModifier > 255) {
      colorModifier = 0;
    }
    break;
  }

  if (!textBlock.getText().equals(" ")) {
    textBlock.setFillColor(color(255));
  }
}

void mousePressed() {
  shouldMakeNewGrid = true;
}

