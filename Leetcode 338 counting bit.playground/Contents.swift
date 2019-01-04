//: Playground - noun: a place where people can play

import UIKit


func countBits(_ num: Int) -> [Int] {
    var ret = [Int](repeating: 0, count: num + 1)
    ret[0] = 0
    for i in 0...num {
        ret[i] = i.nonzeroBitCount
    }
    return ret
}

countBits(5)
