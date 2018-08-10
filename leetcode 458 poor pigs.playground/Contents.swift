//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func poorPigs(_ buckets: Int, _ minutesToDie: Int, _ minutesToTest: Int) -> Int {
        var res = 0.0
        var n = minutesToTest/minutesToDie + 1
        while pow(Double(n),res)<Double(buckets){
            res += 1.0
        }
        return Int(res)
    }
}
