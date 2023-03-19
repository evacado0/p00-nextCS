class hexagonLetter {
  char letter;
  int x;
  int y;
  int sz; //sidelength
  color colorOfHexagon;
  char bank[]= new char[text.length];
  //grey: #D8D8D8
  //yellow: #FAD82D

  //get letter: from a-z, pick one letter
  //get good words: if charIncludes letter,

  //void getWord(char letter, String text){
  //  //letter = char(random(97,122));
  //  for (int i=0; i<=text.length; i++){
  //    String words[i] = //get the letter bank
  //  }
  //}
  hexagonLetter() {
    letter = ' ';
    x = 0;
    y = 0;
    sz = 50;
  }

  //GETS THE 7 LETTER IT'S GONNA SHOW ON SCREEN
  void letterBank(char letter) {
    //String bank[]= new String[text.length];
    // while(i < text.length && i>0){
    // for(int a=0; a<=text[i].length; a++)
    int i=int(random(0, text.length));
    if (text[i].length() == 7) {
      for (int n = 0; n <=  7; n++) {
        if (text[i].charAt(n) == letter) {
          String word = text[i];
          for (int a=0; a<=7; a++) {
            bank[a] = (word.charAt(a));//char(word.charAt(a));
          }
        }
      }
      //break
      //  }
    }
    //else{
    //  letterBank(letter);
    //}
  }

  void drawLetter(char letter, int x, int y) {
    textSize(24);
    fill(0);
    text(letter, x, y);
  }

  void drawHexagon(int x, int y, color colorOfHexagon, int sz) {
    float root3 = sqrt(3);
    fill(colorOfHexagon);
    beginShape();
    vertex(x, y);
    vertex(x+0.5*sz*root3, y+0.5*sz);
    vertex(x+0.5*sz*root3, y+1.5*sz);
    vertex(x, y+2*sz);
    vertex(x-0.5*sz*root3, y+1.5*sz);
    vertex(x-0.5*sz*root3, y+0.5*sz);
    endShape(CLOSE);
  }
}
