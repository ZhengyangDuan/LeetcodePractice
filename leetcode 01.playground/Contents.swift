//: Playground - noun: a place where people can play
//use of dictionary
// store nums as key and index as value

import UIKit

func check(_ nums:[Int], _ target: Int) -> [Int]{
    var d: [Int : Int] = [ : ]
    for a in 0...nums.count - 1{
        if let index = d[target - nums[a]]{
            return [index, a]
        }
        d[nums[a]] = a
        print(d)
    }
    
    return []
}

check([2,5,7,8,9,13,46], 17)
