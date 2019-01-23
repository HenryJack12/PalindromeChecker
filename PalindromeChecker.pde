public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String sWord){
  String reverse = "";
  for(int i = sWord.length() - 1; i > -1; i--) {
    reverse = reverse + sWord.substring(i, i + 1);
  }
  reverse = onlyLetters(reverse);
  reverse = reverse.toLowerCase();
  if(reverse.equals(onlyLetters(sWord.toLowerCase()))) { 
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String reverse = "";
    for(int i = str.length() - 1; i > -1; i--) {
      reverse = reverse + str.substring(i, i + 1);
    }
  return reverse;
}
public String onlyLetters(String str){
  String letter = "";
  for(int i = 0; i < str.length(); i++) {
    if(Character.isLetter(str.charAt(i)) == true) {
      letter = letter + str.substring(i, i + 1);
    }
  }
  return letter;
}

