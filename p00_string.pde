String[] text = loadStrings("bee_words.txt");
char letter = char(int(random(97,122)));
color GREY = #D8D8D8;
color YELLOW = #FAD82D;
int size = 50;
int textsize = 30;
String guess;
String foundWords[];
String typedIn = "";
String bank[]= new String[text.length];


//objects
  hexagonLetter square1 = new hexagonLetter();
  hexagonLetter square2 = new hexagonLetter();
  hexagonLetter square3 = new hexagonLetter();
  hexagonLetter square4 = new hexagonLetter();
  hexagonLetter square5 = new hexagonLetter();
  hexagonLetter square6 = new hexagonLetter();
  hexagonLetter squareYellow = new hexagonLetter();

void setup(){

  size(600,400);
  text = loadStrings("bee_words.text");
  
  //hexagonLetter square1 = new hexagonLetter();
  //hexagonLetter square2 = new hexagonLetter();
  //hexagonLetter square3 = new hexagonLetter();
  //hexagonLetter square4 = new hexagonLetter();
  //hexagonLetter square5 = new hexagonLetter();
  //hexagonLetter square6 = new hexagonLetter();
  //hexagonLetter squareYellow = new hexagonLetter();
    square1.drawLetter(square1.bank[0],200, 300);
  square1.drawHexagon(250, 300, GREY,size);
    square2.drawLetter(square2.bank[1],300, 300);
  square2.drawHexagon(350, 300, GREY,size);
    square3.drawLetter(square3.bank[2],150, 220);
  square3.drawHexagon(200, 220, GREY, size);
    square4.drawLetter(square4.bank[3],200, 140);
  square4.drawHexagon(250, 140, GREY, size);
    square5.drawLetter(square5.bank[4],300, 140);
  square5.drawHexagon(350, 140, GREY, size);
    square6.drawLetter(square6.bank[5],340, 220);
  square6.drawHexagon(400, 220, GREY, size);
  
    squareYellow.drawLetter(letter,250, 220);
  squareYellow.drawHexagon(300, 220, YELLOW, size);
  
  
    //drawing the various buttons
   buttons delete = new buttons();
   buttons shuffle = new buttons();
   buttons enter = new buttons();
  delete.drawDelete(30,300,100,40);
  shuffle.drawShuffle(470,300,100,40);
  enter.drawEnter(470,200,100,40);
}

void draw(){
  background(255);
//  for (int i=0; i<=5; i++){
//  hexagonLetter.drawLetter(hexagonLetter.letterBank[i],x, y);
//  hexagonLetter.drawHexagon(x, y, GREY);
  

//}

  

  
  //drawStrings
  drawString(typedIn, 200, 50);
}

//BUTTONS PART
void mousePressed(){
  if (mouseX>=30 && mouseX<=130 && mouseY>=300 && mouseY<=340){
    typedIn = typedIn.substring(0, typedIn.length()-2);
    drawString(typedIn, 30,340);
  } //delete
  if (mouseX>=470 && mouseX<=570 && mouseY>=300 && mouseY<=340){
    //bank.shuffle();
      }//shuffle
  if (mouseX>=470 && mouseX<=570 && mouseY>=200 && mouseY<=240){
    checkGuess(typedIn);
  } // enter
  if (findingDistance(250,300+size, mouseX,mouseY) < size) {
    square1.letterBank(letter);
    typedIn = typedIn + square1.bank[0];
  }
   if (findingDistance(350,300+size, mouseX,mouseY) < size) {
    square2.letterBank(letter);
    typedIn = typedIn + square2.bank[1];
  }
   if (findingDistance(200,220+size, mouseX,mouseY) < size) {
    square3.letterBank(letter);
    typedIn = typedIn + square3.bank[2];
  }
   if (findingDistance(250,140+size, mouseX,mouseY) < size) {
    square4.letterBank(letter);
    typedIn = typedIn + square4.bank[3];
  }
    if (findingDistance(350,140+size, mouseX,mouseY) < size) {
    square5.letterBank(letter);
    typedIn = typedIn + square5.bank[4];
  }
  if (findingDistance(400,220+size, mouseX,mouseY) < size) {
    square6.letterBank(letter);
    typedIn = typedIn + square6.bank[5];
  }
  if (findingDistance(300,220+size, mouseX,mouseY) < size) {
    squareYellow.letterBank(letter);
    typedIn = typedIn + squareYellow.bank[6];
  }
}



//typing in words

float findingDistance( int x1, int y1, int x2, int y2){
  int difference1 = x1-x2;
  int difference2 = y1-y2;
  float d = sqrt( (difference1)^2 + (difference2)^2);
  return d;
}


void pressingLetter (char c){
  typedIn = typedIn + 'c';
}

void keyPressed() {
  for(char c = 'A'; c<= 'z'; c++) {
    if (key == 'c') {
      typedIn = typedIn + 'c';
    }
  }
}

void drawString(String c, int x, int y) {
  noStroke();
  fill(255);
  textSize(textsize);
  text(typedIn,x,y);
  } //drawString
  
  
void checkGuess(String guess){
  boolean checkG;
  for(int i=0; i<= text.length; i++){
    if (guess == text[i]){
      checkG = true;
      foundWords[i]=guess;
    }
    else{
      checkG = false;
    }
  }
}

void announcement(boolean checkG,int x,int y){
  if(checkG == true){
    textSize(24);
    text("correct word", x,y);
    
  }
  else{
    textSize(24);
    text("not a valid word", x, y);
  }

}

class wordsFound{
  int x;
  int y;
  String foundWords[];
  
  void drawOutline(){
    rect(60, 60, 220, 320, 28);
    
  }
  
  void drawWords(int x, int y, int sz){
  for(int i=0; i<=foundWords.length; i++){
    textSize(sz);
    text(foundWords[i], x, y);
  }
  }
}
