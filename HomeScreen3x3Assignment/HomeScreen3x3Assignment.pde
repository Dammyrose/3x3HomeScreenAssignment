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
PImage pic1, pic2, pic3, pic4, pic5, pic6, pic7, pic8;
float imageX1, imageY1, imageWidth1, imageHeight1, imageLargerDimension1, imageSmallerDimension1, imageWidthRatio1=0.0, imageHeightRatio1=0.0;
float picWidthAdjusted1, picHeightAdjusted1;
float imageX2, imageY2, imageWidth2, imageHeight2, imageLargerDimension2, imageSmallerDimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
float picWidthAdjusted2, picHeightAdjusted2;
float imageX3, imageY3, imageWidth3, imageHeight3, imageLargerDimension3, imageSmallerDimension3, imageWidthRatio3=0.0, imageHeightRatio3=0.0;
float picWidthAdjusted3, picHeightAdjusted3;
float imageX4, imageY4, imageWidth4, imageHeight4, imageLargerDimension4, imageSmallerDimension4, imageWidthRatio4=0.0, imageHeightRatio4=0.0;
float picWidthAdjusted4, picHeightAdjusted4;
float imageX5, imageY5, imageWidth5, imageHeight5, imageLargerDimension5, imageSmallerDimension5, imageWidthRatio5=0.0, imageHeightRatio5=0.0;
float picWidthAdjusted5, picHeightAdjusted5;
float imageX6, imageY6, imageWidth6, imageHeight6, imageLargerDimension6, imageSmallerDimension6, imageWidthRatio6=0.0, imageHeightRatio6=0.0;
float picWidthAdjusted6, picHeightAdjusted6;
float imageX7, imageY7, imageWidth7, imageHeight7, imageLargerDimension7, imageSmallerDimension7, imageWidthRatio7=0.0, imageHeightRatio7=0.0;
float picWidthAdjusted7, picHeightAdjusted7;
float imageX8, imageY8, imageWidth8, imageHeight8, imageLargerDimension8, imageSmallerDimension8, imageWidthRatio8=0.0, imageHeightRatio8=0.0;
float picWidthAdjusted8, picHeightAdjusted8;
Boolean widthLarger1=false, heightLarger1=false;
Boolean widthLarger2=false, heightLarger2=false;
Boolean widthLarger3=false, heightLarger3=false;
Boolean widthLarger4=false, heightLarger4=false;
Boolean widthLarger5=false, heightLarger5=false;
Boolean widthLarger6=false, heightLarger6=false;
Boolean widthLarger7=false, heightLarger7=false;
Boolean widthLarger8=false, heightLarger8=false;
//
String title = "Start";
PFont titleFont;
color purple=#2C08FF, resetDefaultInk=#FFFFFF; //not nightMode friendly
int titleSize;
//
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
  pic5 = loadImage("../Images Used/Flowers.jpg");//Dimensions: width 1000 , height 667
  pic6 = loadImage("../Images Used/Tree.jpg");//Dimensions: width 800, height 594
  pic7 = loadImage("../Images Used/Autumn.jpg");//Dimensions: width 530, height 328
  pic8 = loadImage("../Images Used/Dead.jpg");//Dimensions: width 2816, height 2112
  //
  int picWidth1 = 2121;
  int picHeight1 = 1414;
  int picWidth2 = 612;
  int picHeight2 = 612;
  int picWidth3 = 512;
  int picHeight3 = 512;
  int picWidth4= 400;
  int picHeight4= 328;
  int picWidth5 = 1000;
  int picHeight5= 667;
  int picWidth6 = 800;
  int picHeight6 = 594;
  int picWidth7 = 530;
  int picHeight7 = 328;
  int picWidth8= 2816;
  int picHeight8=2112;
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
  //
    if ( picWidth5 >= picHeight5) { //Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension5= picWidth5;
    imageSmallerDimension5 = picHeight5;
    widthLarger5= true;
  } else {
    //False if Portrait
    imageLargerDimension5 = picHeight5;
    imageSmallerDimension5 = picWidth5;
    heightLarger5 = true;
  }//End Image Dimension Comparison
  println(imageSmallerDimension5, imageLargerDimension5, widthLarger5, heightLarger5); //Verify variables details
  //
   if ( picWidth6 >= picHeight6) { //Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension6= picWidth6;
    imageSmallerDimension6 = picHeight6;
    widthLarger6= true;
  } else {
    //False if Portrait
    imageLargerDimension6= picHeight6;
    imageSmallerDimension6 = picWidth6;
    heightLarger6 = true;
  }//End Image Dimension Comparison
  println(imageSmallerDimension6, imageLargerDimension6, widthLarger6, heightLarger6); //Verify variables details
  //
     if ( picWidth7 >= picHeight7) { //Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension7= picWidth7;
    imageSmallerDimension7 = picHeight7;
    widthLarger7= true;
  } else {
    //False if Portrait
    imageLargerDimension7= picHeight7;
    imageSmallerDimension7 = picWidth7;
    heightLarger7 = true;
  }//End Image Dimension Comparison
  println(imageSmallerDimension7, imageLargerDimension7, widthLarger7, heightLarger7); //Verify variables details
  //
    if ( picWidth8 >= picHeight8) { //Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension8= picWidth8;
    imageSmallerDimension8 = picHeight8;
    widthLarger8= true;
  } else {
    //False if Portrait
    imageLargerDimension8= picHeight8;
    imageSmallerDimension8 = picWidth8;
    heightLarger8 = true;
  }//End Image Dimension Comparison
  println(imageSmallerDimension8, imageLargerDimension8, widthLarger8, heightLarger8); //Verify variables details
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
  //
  if ( widthLarger5 == true ) imageWidthRatio5 = imageLargerDimension5/ imageLargerDimension5;
  if ( widthLarger5 == true ) imageHeightRatio5 = imageSmallerDimension5/ imageLargerDimension5;
  if ( heightLarger5 == true ) imageWidthRatio5= imageSmallerDimension5/ imageLargerDimension5;
  if ( heightLarger5 == true ) imageHeightRatio5= imageLargerDimension5 / imageLargerDimension5;
  //
  if ( widthLarger6 == true ) imageWidthRatio6 = imageLargerDimension6/ imageLargerDimension6;
  if ( widthLarger6 == true ) imageHeightRatio6 = imageSmallerDimension6/ imageLargerDimension6;
  if ( heightLarger6== true ) imageWidthRatio6= imageSmallerDimension6/ imageLargerDimension6;
  if ( heightLarger6== true ) imageHeightRatio6= imageLargerDimension6 / imageLargerDimension6;
  //
  if ( widthLarger7== true ) imageWidthRatio7 = imageLargerDimension7/ imageLargerDimension7;
  if ( widthLarger7 == true ) imageHeightRatio7 = imageSmallerDimension7/ imageLargerDimension7;
  if ( heightLarger7== true ) imageWidthRatio7= imageSmallerDimension7/ imageLargerDimension7;
  if ( heightLarger7== true ) imageHeightRatio7= imageLargerDimension7 / imageLargerDimension7;
  //
  if ( widthLarger8== true ) imageWidthRatio8 = imageLargerDimension8/ imageLargerDimension8;
  if ( widthLarger8 == true ) imageHeightRatio8 = imageSmallerDimension8/ imageLargerDimension8;
  if ( heightLarger8== true ) imageWidthRatio8= imageSmallerDimension8/ imageLargerDimension8;
  if ( heightLarger8== true ) imageHeightRatio8= imageLargerDimension8 / imageLargerDimension8;
  //
  //Fonts from OS (Operating System)
  String[] fontList = PFont.list(); //To list all fonts available on OS
  printArray(fontList); //For Listing all possible fonts to choose from, then createFont
  titleFont = createFont("Webdings", 55); //Verify the font exists in Processing.JAVA
  // Tools / Create Font / Find Font in list to verify / Do not press "OK", known bug
  //
  //Layout our text space and typographical features
  rect(xButton9, yButton9, widthButton9, heightButton9);
  //
}//End setup
//
void draw() 
{
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 40; //Change this number until it fits
  textFont(titleFont, titleSize);
  text(title, xButton9, yButton9, widthButton9, heightButton9);
  fill(resetDefaultInk);
  //
  //rect(xButton1, yButton1, widthButton1, heightButton1);
  image(pic1, xButton1, yButton1, widthButton1, heightButton1);
  //image(pic2, xButton2, yButton2, widthButton2, heightButton2);
  //image(pic3, xButton3, yButton3, widthButton3, heightButton3);
  //image(pic4, xButton4, yButton4, widthButton4, heightButton4);
  //image(pic5, xButton5, yButton5, widthButton5, heightButton5);
  //image(pic6, xButton6, yButton6, widthButton6, heightButton6);
  //image(pic7, xButton7, yButton7, widthButton7, heightButton7);
  //image(pic8, xButton8, yButton8, widthButton8, heightButton8);
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
  if(mouseX>xButton1 && mouseX<xButton1+widthButton1 && mouseY>yButton1 && mouseY<yButton1+heightButton1 ) image(pic2, xButton2, yButton2, widthButton2, heightButton2);
  if(mouseX>xButton2 && mouseX<xButton2+widthButton2 && mouseY>yButton2 && mouseY<yButton2+heightButton2 ) image(pic3, xButton3, yButton3, widthButton3, heightButton3);
  if(mouseX>xButton3 && mouseX<xButton3+widthButton3 && mouseY>yButton3 && mouseY<yButton3+heightButton3 ) image(pic4, xButton4, yButton4, widthButton4, heightButton4);
  if(mouseX>xButton4 && mouseX<xButton4+widthButton4 && mouseY>yButton4 && mouseY<yButton4+heightButton4 ) image(pic5, xButton5, yButton5, widthButton5, heightButton5);
  if(mouseX>xButton5 && mouseX<xButton5+widthButton5 && mouseY>yButton5 && mouseY<yButton5+heightButton5 ) image(pic6, xButton6, yButton6, widthButton6, heightButton6);
  if(mouseX>xButton6 && mouseX<xButton6+widthButton6 && mouseY>yButton6 && mouseY<yButton6+heightButton6 ) image(pic7, xButton7, yButton7, widthButton7, heightButton7);
  if(mouseX>xButton7 && mouseX<xButton7+widthButton7 && mouseY>yButton7 && mouseY<yButton7+heightButton7 ) image(pic8, xButton8, yButton8, widthButton8, heightButton8);
  //
}//End mousePressed
//
//End MAIN Program 
