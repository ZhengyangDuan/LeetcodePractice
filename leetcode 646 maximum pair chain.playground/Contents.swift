//: Playground - noun: a place where people can play

import UIKit

let test = [[1,2], [2,3], [4,3],[3,4]]
func findLongestChain(_ pairs: [[Int]]) -> Int {
    var res = 0
    let a = pairs.sorted(by: {$0[0]<$1[0]})
    var tail = Int.min
    for pair in a {
        if pair[1] < tail {
            tail = pair[1]
            
        }
        if pair[0] > tail {
            res+=1
            tail = pair[1]
        }
    }
    return res
}

findLongestChain(test)
