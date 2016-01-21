
public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
 
  for (int i=0; i < lines.length; i++) 
  {
    removeNon(lines[i].toLowerCase());

    if(palindrome(removeNon(lines[i]))==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }


}
public String removeNon(String sWord){
 
String temp = new String("");
  
  for (int i = 0; i < sWord.length(); i++) {

    if (!sWord.substring(i, i+ 1).equals(" ") && Character.isLetter(sWord.charAt(i))) {

      temp = temp + sWord.substring(i, i+1);
    }
  }

  return temp;

}




public boolean palindrome(String word)
{
  //your code here
  for (int i = 0; i < word.length()/2; i ++) {
    if (!(word.charAt(i) == word.charAt(word.length() -i - 1 ) ) ){
        return false;
    }

}
      return true;

   
    
   




}