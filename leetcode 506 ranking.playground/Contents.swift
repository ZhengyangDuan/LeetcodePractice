//: Playground - noun: a place where people can play

import UIKit

func findRelativeRanks(_ nums: [Int]) -> [String] {
    var n = nums
    n.sort(by: >)
    var res: [String] = []
    if nums.count<1{return []}
    for i in 0..<nums.count{
        let index = n.distance(from: n.startIndex, to: n.index(of: nums[i])!)
        switch index {
        case 0:
            res.append("Gold Medal")
        case 1:
            res.append("Silver Medal")
        case 2:
            res.append("Bronze Medal")
        default:
            res.append("\(index+1)")
        }
    }
    return res
}

print(findRelativeRanks([6,7,8,9,10,14,13,15,16,3,2,1]))



