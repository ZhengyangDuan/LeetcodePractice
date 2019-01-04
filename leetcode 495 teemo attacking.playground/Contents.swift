//: Playground - noun: a place where people can play

import UIKit


func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
    if timeSeries.count == 0 {return 0}
    var res = 0
    
    for i in 0..<timeSeries.count-1{
        res += ((timeSeries[i] + duration > timeSeries[i+1]) ? (timeSeries[i+1] - timeSeries[i]) : duration)
    }
    res += duration
    
    return res
}
