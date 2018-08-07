//: Playground - noun: a place where people can play

import UIKit

func maxProfit(_ prices: [Int]) -> Int {
    var res = 0
    var start = prices.first!
    for i in 1..<prices.count{
            res = max(res,(prices[i]-start))
            start = min(start,prices[i])
    }
    return res
}

print(maxProfit([7,1,5,3,6,4]))


// 122 advanced question
func maxProfit2(_ prices: [Int]) -> Int {
    var res = 0
    
    if prices.count == 0 || prices.count == 0{return res}
    
    for i in 0..<prices.count - 1 {
        if prices[i] < prices[i + 1] {
            res += (prices[i + 1] - prices[i])
        }
    }
    
    return res
}
print(maxProfit2([7,1,5,3,6,4]))

