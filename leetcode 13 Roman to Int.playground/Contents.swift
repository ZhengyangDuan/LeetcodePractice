//: Playground - noun: a place where people can play

import UIKit

func romanToInt(_ s: String) -> Int {
    var res = 0
    let dict: [Character : Int] =
        ["I" : 1, "V" : 5, "X" : 10, "L" : 50, "C" : 100, "D" : 500, "M" : 1000]
    
    let sArr = Array(s.characters)
    
    for i in 0..<sArr.count {
        
        if i - 1 >= 0 , dict[sArr[i]]! > dict[sArr[i - 1]]! {
            res += dict[sArr[i]]! - (2 * dict[sArr[i - 1]]!)
        } else {
            res += dict[sArr[i]]!
        }
    }
    return res
}
romanToInt("CIX")
