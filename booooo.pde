//String[] text = loadStrings("bobo.txt");
//char letter = char(int(random(97,122)));
//color GREY = #D8D8D8;
//color YELLOW = #FAD82D;
//int size = 50;
//int textsize = 30;
//String guess;
//String foundWords[];
//String typedIn = "";
//char bank[]= new char[text.length];

//void setup(){size(600,400);
// // text = loadStrings("bee_words.text");

//letterBank('a');}

//void letterBank(char letter) {
//   //// char bank[]= new char[text.length];
//   // // while(i < text.length && i>0){
//   // // for(int a=0; a<=text[i].length; a++)
//   // String[] text = loadStrings("bobo.txt");
//   // int i=int(random(0, text.length));
//   // if (text[i].length() == 7) {
//   //   for (int n = 0; n <=  7; n++) {
//   //     if (text[i].charAt(n) == letter) {
//   //       String word = text[i];
//   //       for (int a=0; a<=7; a++) {
//   //         bank[a] = (word.charAt(a));//char(word.charAt(a));
//   //       }
//   //     }
//   //   }
//   //   //break
//   //   //  }
//   // }
//   // //else{
//   // //  letterBank(letter);
//   // //}
//   char bank[]= new char[text.length];
//   String[] text = loadStrings("bobo.text");
//   int wordIndex = int(random(0, text.length));
//   String chosenWord = text[wordIndex];
//   println(chosenWord);
//  }
//String[] text = loadStrings("bobo.txt");
int wordBankLength = 7;
String chosenWord;
char[] bank;// = new char[chosenWord.length()];;
char[] shuffledBank;
//String[] text = loadStrings("bobo.txt");
//char[] bank = new char[text.length];
void setup() {
  size(100, 100);
  letterBank('a');
}
void letterBank(char letter) {
  String[] text = loadStrings("bobo.txt");
  //char bank[]= new char[text.length];
  int wordIndex = int(random(0, text.length));
  String chosenWord = text[wordIndex];
  bank  = new char[chosenWord.length()];
  shuffledBank = new char[chosenWord.length()];
  if (chosenWord.length() == wordBankLength) {
  //char[] bank;
    println(chosenWord);
    for (int i=0; i<= chosenWord.length()-1; i++) {
      //bank 
      bank[i] = chosenWord.charAt(i);
      //shuffledBank = 
      //shuffledBank = 
      //println(bank[i]);
      //printArray(bank);
    }
    printArray(bank);
    
  } else {
    letterBank('a');
  }
}

void shuffleIndex(char array[]){
   for (int i=0; i<= array.length; i++){
    // array[i] = char(int(random(array.length)));
   }

}


