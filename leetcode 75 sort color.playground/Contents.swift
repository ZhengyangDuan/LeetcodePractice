//: Playground - noun: a place where people can play

import UIKit

// 1 pass solution

    func sortColors(_ nums: [Int]) -> [Int]{
        var nums = nums
        var r = 0
        var w = 0
        for b in 0..<nums.count{
            let color = nums[b]
            nums[b] = 2
            if color < 2 {
                nums[w] = 1
                w += 1
            }
            if color == 0 {
                nums[r] = 0
                r += 1
            }
        }
        
        return nums
    }
print(sortColors([2,1,2,1,0,2,1,0,0,1,2,]))


