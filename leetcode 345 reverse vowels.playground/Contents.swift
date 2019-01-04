//: Playground - noun: a place where people can play

import UIKit

func reverseVowels(_ s: String) -> String {
    var res = ""
    let vowels = ["a", "e", "i", "o", "u","A","E","I","O","U"]
    let s1 = Array(s)
    var v: [String] = []
    for char in s1 {
        if vowels.contains(String(char)){
            v.append(String(char))
        }
    }
    if v.count == 0 {return s}
    v.reverse()
    var count = 0
    for char in s1 {
        if !vowels.contains(String(char)){
            res += String(char)
        }else{
            res += v[count]
            count += 1
        }
    }
    return res
}
print(reverseVowels("leetcode"))
