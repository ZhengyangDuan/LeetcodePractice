//: Playground - noun: a place where people can play

import UIKit

func buddyStrings(_ A: String, _ B: String) -> Bool {
    if A.count < 2 || A.count != B.count {
        return false
    }
    if A == B && Set(A).count < A.count {
        return true
    }
    var a = Array(A)
    var b = Array(B)
    var array = [String]()
    if A != B {
        for i in 0 ..< a.count {
            if a[i] != b[i] {
                array.append(String(a[i]))
                array.append(String(b[i]))
            }
        }
        if array.reversed() == array {
            return true
        }
    }
    return false
    
}
buddyStrings("abab", "abab")
