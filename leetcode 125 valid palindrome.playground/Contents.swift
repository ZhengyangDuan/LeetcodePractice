//: Playground - noun: a place where people can play
//two pointer is less effective
import UIKit

var test = "race a car"
func isPalindrome(_ s: String) -> Bool {
    if s.count<2{return true}
    var s1 = Array(s.lowercased())
    print(s1)
    var i = 0, j = s1.count-1
   
    while i < j{
        if !((s1[i]>="a" && s1[i]<="z") || (s1[i]>="0" && s1[i]<="9")) {
            i+=1
        }
        if !((s1[j]>="a" && s1[j]<="z") || (s1[j]>="0" && s1[j]<="9")){
            j-=1
        }
        if ((s1[j]>="a" && s1[j]<="z") || (s1[j]>="0" && s1[j]<="9")) && ((s1[i]>="a" && s1[i]<="z") || (s1[i]>="0" && s1[i]<="9")){
            if s1[i] != s1[j] {
                return false
            }
            i+=1
            j-=1
        }
    }
    return true
}


//use helper to convert it to a array of char with only lowercase and number is much more faster.

isPalindrome("0p")
