//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func longestCommonPrefix(_ strs: [String]) -> String {
    var res = strs.min(by: {$0.count<$1.count})!
    if strs.count == 0 {return ""}
    for str in strs{
        while !str.hasPrefix(res) && res.count > 0 {
            res.removeLast()
        }
        if res.count == 0{return ""}
    }
    
    
    return res
}

var test = ["flower","flow","flight"]
print(longestCommonPrefix(test))

