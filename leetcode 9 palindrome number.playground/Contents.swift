//: Playground - noun: a place where people can play

import UIKit

func parlin(_ x: Int) -> Bool {
    if x<0 {return false}
    var temp = x
    var result = 0
    while temp > 0 {
        result = result * 10 + temp % 10
        temp = (temp - temp % 10) / 10
    }
    print(result)
    if result == x {
        return true
        
    }else {
        return false
    }
    
}

parlin(2)
