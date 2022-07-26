import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//
//Global Variables
float xButton1, yButton1, widthButton1, heightButton1;
float xButton2, yButton2, widthButton2, heightButton2;
float xButton3, yButton3, widthButton3, heightButton3;
float xButton4, yButton4, widthButton4, heightButton4;
float xButton5, yButton5, widthButton5, heightButton5;
float xButton6, yButton6, widthButton6, heightButton6;
float xButton7, yButton7, widthButton7, heightButton7;
float xButton8, yButton8, widthButton8, heightButton8;
float xButton9, yButton9, widthButton9, heightButton9;
float xquitButton, yquitButton, widthQuitButton, heightQuitButton;
color red = #EA0E0E, white = #FFF5F5, resetButtonColour=#FFFFFF, quitButtonFill;
float smallerDimension;
PImage pic1;
float imageX1, imageY1, imageWidth1, imageHeight1, imageLargerDimension1, imageSmallerDimension1, imageWidthRatio1=0.0, imageHeightRatio1=0.0;
float picWidthAdjusted1, picHeightAdjusted1;
Boolean widthLarger1=false, heightLarger1=false;
Boolean widthLarger2=false, heightLarger2=false;
//
void setup() {
  size(900,700); //Landscape
  //
  //Population
  float xCenter = width/2;
  float yCenter = height/2;
   if ( width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  xButton1 = xCenter - width/2 ;
  yButton1 = yCenter - height/2;
  widthButton1 = width*1/3;
  heightButton1 = height*1/2;
  //
  xButton2 =xButton1 ; 
  yButton2 = 240;
  widthButton2 = widthButton1;
  heightButton2 = heightButton1;
  //
  xButton3 = xButton1;
  yButton3 = 470 ;
  widthButton3 = widthButton1;
  heightButton3 = heightButton1;
  //
  xButton4 =  xButton1 + width*1/3;
  yButton4 = yButton1 ; 
  widthButton4 = widthButton1; 
  heightButton4 = heightButton1;
  //
  xButton5 = xButton4; 
  yButton5 = yButton2;
  widthButton5 = widthButton1;
  heightButton5 = heightButton1;
  //
  xButton6 = xButton4; 
  yButton6 = yButton3;
  widthButton6 = widthButton1 ;
  heightButton6 = heightButton1 ;
  //
  xButton7 = xButton1 + width*2/3;
  yButton7 = yButton1;
  widthButton7 = widthButton1;
  heightButton7 =  heightButton1 ;
  //
  xButton8 = xButton7 ;
  yButton8 = yButton2; 
  widthButton8 = widthButton1 ;
  heightButton8 = heightButton1;
  //
  xButton9 = xButton7 ;
  yButton9 = yButton3;
  widthButton9 = widthButton1;
  heightButton9 = widthButton1;
  //
  //Quit button Dimension
  xquitButton =xCenter ; 
  yquitButton = width*24/50;
  widthQuitButton = width*1/9;
  heightQuitButton = height*1/9;
  //
  //Population of image 
  pic1 = loadImage("../Images Used/Soil.jpg");//Dimensions: width 2121, height 1414
  // 
  int picWidth1 = 2121;
  int picHeight1 = 1414;
    //
  if ( picWidth1 >= picHeight1 ) { //Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension1 = picWidth1;
    imageSmallerDimension1 = picHeight1;
    widthLarger1 = true;
  } else {
    //False if Portrait
    imageLargerDimension1 = picHeight1;
    imageSmallerDimension1 = picWidth1;
    heightLarger1 = true;
  }//End Image Dimension Comparison
  println(imageSmallerDimension1, imageLargerDimension1, widthLarger1, heightLarger1); //Verify variables details
  //Aspect Ratio
  //Note: single line IFs can be summarized into IF-ELSE or IF-ElseIF-Else
  //Computer chooses which formulae to execute
  if ( widthLarger1 == true ) imageWidthRatio1 = imageLargerDimension1 / imageLargerDimension1;
  if ( widthLarger1 == true ) imageHeightRatio1 = imageSmallerDimension1 / imageLargerDimension1;
  if ( heightLarger1 == true ) imageWidthRatio1 = imageSmallerDimension1 / imageLargerDimension1;
  if ( heightLarger1 == true ) imageHeightRatio1 = imageLargerDimension1 / imageLargerDimension1;
}//End setup
//
void draw() 
{
  //rect(xButton1, yButton1, widthButton1, heightButton1);
  image(pic1, xButton1, yButton1, widthButton1, heightButton1);
  rect(xButton2, yButton2, widthButton2, heightButton2);
  rect(xButton3, yButton3, widthButton3, heightButton3);
  rect(xButton4, yButton4, widthButton4, heightButton4);
  rect(xButton5, yButton5, widthButton5, heightButton5);
  rect(xButton6, yButton6, widthButton6, heightButton6);
  rect(xButton7, yButton7, widthButton7, heightButton7);
  rect(xButton8, yButton8, widthButton8, heightButton8);
  rect(xButton9, yButton9, widthButton9, heightButton9);
  //
  if(mouseX>xquitButton && mouseX<xquitButton+widthQuitButton && mouseY>yquitButton && mouseY<yquitButton+heightQuitButton) {
    quitButtonFill= red;
  }else{
    quitButtonFill = white;
  }//End Hover-Over 
  fill(quitButtonFill); //2-colours to start, remember that nightMode adds choice
  ellipse(xquitButton, yquitButton, widthQuitButton, heightQuitButton);
  fill(resetButtonColour);
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() 
{
  if(mouseX>xquitButton && mouseX<xquitButton+widthQuitButton && mouseY>yquitButton && mouseY<yquitButton+heightQuitButton ) exit();
  //
}//End mousePressed
//
//End MAIN Program 
