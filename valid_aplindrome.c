/*
A phrase is a palindrome if, after converting all uppercase letters into lowercase 
letters and removing all non-alphanumeric characters, it reads the same forward and backward. 
Alphanumeric characters include letters and numbers.

Given a string s, return true if it is a palindrome, or false otherwise. 

Example 1:
Input: s = "A man, a plan, a canal: Panama"
Output: true

Explanation: "amanaplanacanalpanama" is a palindrome.

 */



bool isPalindrome(char* s) {
   int l = 0, r = strlen(s) - 1;

    while (l<r) {
        while (l<r && !isalnum(s[l])) {
            l++;
        }
        while (l<r && !isalnum(s[r])) {
            r--;
        }
        if (l<r && tolower(s[l]) != tolower(s[r])) {
            return false;
        }
        l++;
        r--;
    }

    return true;    
}

// int main(){
//     char s[] = "A man, a plan, a canal: Panama";
//     printf("%d\n", isPalindrome(s)); // prints 1
// }