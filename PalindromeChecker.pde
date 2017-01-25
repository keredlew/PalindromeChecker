public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String cheese= new String();
  for(int i=1; i<word.length()+1 ;i++)
    cheese= cheese + word.substring(word.length()-i , word.length() -i +1);
  if(cheese.equals(word))
    return true;
  return false; 
}
public String reverse(String sWord){
  String lights = new String();
    int Last = sWord.length()-1;
    for(int i=Last; i>=0; i--)
    {
        lights = lights + sWord.substring(i,i+1); 
    }
    return lights;
}
public int numLetters(String sString){
  int num = 0;
  for (int i = 0; i< sString.length(); i++) {
  if (Character.isLetter(sString.charAt(i)))  
  num ++;
  }
  return num;
} 
public String noCapitals(String sWord){
  return sWord.toLowerCase();
} 
public String noSpaces(String sWord){
  String space = new String();
  
  for (int i = 0; i < sWord.length(); i++)
  {
    if (sWord.charAt(i) != ' ')
    {
      space = space + sWord.charAt(i);
    }
  }
  return space;
} 
public String onlyLetters(String sString){
  if(sString.length() == 0)
    return "";
  else if(Character.isLetter(sString.charAt(0)))
    return sString.charAt(0) + onlyLetters(sString.substring(1));
  else
    return onlyLetters(sString.substring(1));
}


