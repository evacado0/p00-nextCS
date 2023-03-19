String[] text = loadStrings("bee_words.txt");
char letter = char(int(random(97,122)));
color GREY = #D8D8D8;
color YELLOW = #FAD82D;
int size = 50;
int textsize = 30;
String guess;
String foundWords[];
String typedIn = "";
char bank[]= new char[text.length];

void setup(){size(600,400);
 // text = loadStrings("bee_words.text");

letterBank('a');}

void letterBank(char letter) {
   // char bank[]= new char[text.length];
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
