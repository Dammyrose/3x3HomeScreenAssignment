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
PImage pic1, pic2, pic3, pic4;
float imageX1, imageY1, imageWidth1, imageHeight1, imageLargerDimension1, imageSmallerDimension1, imageWidthRatio1=0.0, imageHeightRatio1=0.0;
float picWidthAdjusted1, picHeightAdjusted1;
float imageX2, imageY2, imageWidth2, imageHeight2, imageLargerDimension2, imageSmallerDimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
float picWidthAdjusted2, picHeightAdjusted2;
float imageX3, imageY3, imageWidth3, imageHeight3, imageLargerDimension3, imageSmallerDimension3, imageWidthRatio3=0.0, imageHeightRatio3=0.0;
float picWidthAdjusted3, picHeightAdjusted3;
float imageX4, imageY4, imageWidth4, imageHeight4, imageLargerDimension4, imageSmallerDimension4, imageWidthRatio4=0.0, imageHeightRatio4=0.0;
float picWidthAdjusted4, picHeightAdjusted4;
Boolean widthLarger1=false, heightLarger1=false;
Boolean widthLarger2=false, heightLarger2=false;
Boolean widthLarger3=false, heightLarger3=false;
Boolean widthLarger4=false, heightLarger4=false;
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
  heightButton1 = height*1/3;
  //
  xButton2 =xButton1 ; 
  yButton2 = 220;
  widthButton2 = widthButton1;
  heightButton2 = height*2/3;
  //
  xButton3 = xButton1;
  yButton3 = 470 ;
  widthButton3 = widthButton1;
  heightButton3 = heightButton2;
  //
  xButton4 =  xButton1 + width*1/3;
  yButton4 = yButton1 ; 
  widthButton4 = widthButton1; 
  heightButton4 = heightButton1;
  //
  xButton5 = xButton4; 
  yButton5 = yButton2;
  widthButton5 = widthButton1;
  heightButton5 = heightButton2;
  //
  xButton6 = xButton4; 
  yButton6 = yButton3;
  widthButton6 = widthButton1 ;
  heightButton6 = heightButton2;
  //
  xButton7 = xButton1 + width*2/3;
  yButton7 = yButton1;
  widthButton7 = widthButton1;
  heightButton7 =  heightButton2 ;
  //
  xButton8 = xButton7 ;
  yButton8 = yButton2; 
  widthButton8 = widthButton1 ;
  heightButton8 = heightButton2;
  //
  xButton9 = xButton7 ;
  yButton9 = yButton3;
  widthButton9 = widthButton1;
  heightButton9 = widthButton2;
  //
  //Quit button Dimension
  xquitButton =xCenter ; 
  yquitButton = width*24/50;
  widthQuitButton = width*1/9;
  heightQuitButton = height*1/9;
  //
  //Population of image 
  pic1 = loadImage("../Images Used/Soil.jpg");//Dimensions: width 2121, height 1414
  pic2 = loadImage("../Images Used/Seed.jpg");//Dimensions: width 612 , height 612
  pic3 = loadImage("../Images Used/Sprout.jpg");//Dimensions: width 512 , height 512
  pic4 = loadImage("../Images Used/Stem.jpg");//Dimensions: width 400 , height 328
  // 
  int picWidth1 = 2121;
  int picHeight1 = 1414;
  int picWidth2 = 612;
  int picHeight2 = 612;
  int picWidth3 = 512;
  int picHeight3 = 512;
  int picWidth4= 400;
  int picHeight4= 328;
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
  //
  if ( picWidth2 >= picHeight2) { //Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension2 = picWidth2;
    imageSmallerDimension2 = picHeight2;
    widthLarger2 = true;
  } else {
    //False if Portrait
    imageLargerDimension2 = picHeight2;
    imageSmallerDimension2 = picWidth2;
    heightLarger2 = true;
  }//End Image Dimension Comparison
  println(imageSmallerDimension2, imageLargerDimension2, widthLarger2, heightLarger2); //Verify variables details
  //
    if ( picWidth3 >= picHeight3) { //Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension3 = picWidth3;
    imageSmallerDimension3 = picHeight3;
    widthLarger3 = true;
  } else {
    //False if Portrait
    imageLargerDimension3 = picHeight3;
    imageSmallerDimension3 = picWidth3;
    heightLarger3 = true;
  }//End Image Dimension Comparison
  println(imageSmallerDimension3, imageLargerDimension3, widthLarger3, heightLarger3); //Verify variables details
  //Aspect Ratio
  //
    if ( picWidth4 >= picHeight4) { //Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension4= picWidth4;
    imageSmallerDimension4 = picHeight4;
    widthLarger4 = true;
  } else {
    //False if Portrait
    imageLargerDimension4 = picHeight4;
    imageSmallerDimension4 = picWidth4;
    heightLarger4 = true;
  }//End Image Dimension Comparison
  println(imageSmallerDimension4, imageLargerDimension4, widthLarger4, heightLarger4); //Verify variables details
  //Aspect Ratio
  //Aspect Ratio
  //Note: single line IFs can be summarized into IF-ELSE or IF-ElseIF-Else
  //Computer chooses which formulae to execute
  if ( widthLarger1 == true ) imageWidthRatio1 = imageLargerDimension1 / imageLargerDimension1;
  if ( widthLarger1 == true ) imageHeightRatio1 = imageSmallerDimension1 / imageLargerDimension1;
  if ( heightLarger1 == true ) imageWidthRatio1 = imageSmallerDimension1 / imageLargerDimension1;
  if ( heightLarger1 == true ) imageHeightRatio1 = imageLargerDimension1 / imageLargerDimension1;
  //
  if ( widthLarger2 == true ) imageWidthRatio2 = imageLargerDimension2/ imageLargerDimension2;
  if ( widthLarger2 == true ) imageHeightRatio2 = imageSmallerDimension2 / imageLargerDimension2;
  if ( heightLarger2 == true ) imageWidthRatio2 = imageSmallerDimension2 / imageLargerDimension2;
  if ( heightLarger2 == true ) imageHeightRatio2 = imageLargerDimension2 / imageLargerDimension2;
  //
  if ( widthLarger3 == true ) imageWidthRatio3 = imageLargerDimension3/ imageLargerDimension3;
  if ( widthLarger3 == true ) imageHeightRatio3 = imageSmallerDimension3 / imageLargerDimension3;
  if ( heightLarger3 == true ) imageWidthRatio3 = imageSmallerDimension3 / imageLargerDimension3;
  if ( heightLarger3 == true ) imageHeightRatio3 = imageLargerDimension3 / imageLargerDimension3;
  //
   if ( widthLarger4 == true ) imageWidthRatio4 = imageLargerDimension4/ imageLargerDimension4;
  if ( widthLarger4 == true ) imageHeightRatio4 = imageSmallerDimension4/ imageLargerDimension4;
  if ( heightLarger4 == true ) imageWidthRatio4 = imageSmallerDimension4/ imageLargerDimension4;
  if ( heightLarger4 == true ) imageHeightRatio4 = imageLargerDimension4 / imageLargerDimension4;
}//End setup
//
void draw() 
{
  //rect(xButton1, yButton1, widthButton1, heightButton1);
  image(pic1, xButton1, yButton1, widthButton1, heightButton1);
  //image(pic2, xButton2, yButton2, widthButton2, heightButton2);
  //image(pic3, xButton3, yButton3, widthButton3, heightButton3);
  //image(pic4, xButton4, yButton4, widthButton4, heightButton4);
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
  if(mouseX>xButton1 && mouseX<xButton1+widthButton1 && mouseY>yButton1 && mouseY<yButton1+heightButton1 ) image(pic2, xButton2, yButton2, widthButton2, heightButton2);
  if(mouseX>xButton2 && mouseX<xButton2+widthButton2 && mouseY>yButton2 && mouseY<yButton2+heightButton2 ) image(pic3, xButton3, yButton3, widthButton3, heightButton3);
  if(mouseX>xButton3 && mouseX<xButton3+widthButton3 && mouseY>yButton3 && mouseY<yButton3+heightButton3 ) image(pic4, xButton4, yButton4, widthButton4, heightButton4);
  //
}//End mousePressed
//
//End MAIN Program 
