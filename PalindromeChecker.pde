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

public boolean palindrome(String word)
{
  String lowerC = word.toLowerCase();
  String wordOnly = new String();
  for(int j = 0; j <= lowerC.length()-1;j++)
    {
      if(Character.isLetter(lowerC.charAt(j)) == true)
      {
        wordOnly = wordOnly + lowerC.substring(j,j+1);
      }
    }
  
  if(wordOnly.equals(reverse(wordOnly)))
  {
    return true; 
  }
  return false;
}

public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i >=0; i--)
    {
      sNew = sNew + str.substring(i,i+1); 
    }
    String lower = sNew.toLowerCase();
    String noSpace = new String();
    for(int j = 0; j <= lower.length()-1;j++)
    {
      if(Character.isLetter(lower.charAt(j)) == true)
      {
        noSpace = noSpace + lower.substring(j,j+1);
      }
    }
    return noSpace;
    
}
