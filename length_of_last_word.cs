// Given a string s consisting of words and spaces, return the length of the last word in the string.

// A word is a maximal 
// substring
//  consisting of non-space characters only.

public class Solution {
    public int LengthOfLastWord(string s) {
        string[] words = s.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);
        

        string result = string.Join(" ", words);

        
        char[] charArray = result.ToCharArray();
        Array.Reverse(charArray);
        string reversed = new string(charArray);
        string[] temp=reversed.Split(" ");
        return temp[0].Length;
      
   