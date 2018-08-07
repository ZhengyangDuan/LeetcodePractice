//: Playground - noun: a place where people can play

import UIKit

func removeD(_ numss: [Int]) -> Int{
    if numss.count <= 1 {return numss.count}
    var nums = numss
    var s = nums
    var j = 1
    for i in 0..<nums.count{
        if i > 0 && nums[i] != nums[i-1]{
            nums[j] = s[i]
            j += 1
        }
        
    }
    if s != nums{
        for a in 1...numss.count-j {
            print(nums)
            nums.removeLast()
            print(nums)
        }
    }
    print(nums)
    return j
    
}
removeD([1,1])
