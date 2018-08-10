//: Playground - noun: a place where people can play

import UIKit

func findNthDigit(_ n: Int) -> Int {
    
    var temp = n
    var len = 0
    if n == 1 {return 1}
    while temp > 1 {
        temp = n
        for i in 0...len{
            temp -= (9 * Int(pow(Double(10), Double(i))))*(i+1)
        }
        len += 1
    }
    len
    var start = 0
    for i in 1..<len{
        start += (9 * Int(pow(Double(10), Double(i-1))))*(i)
    }
    start += 1
    var startNo = Int(pow(Double(10), Double(len-1)))
    var no = (startNo + ((n-start)/len))
    var index = (n-start)%len
    return Int(String(Array("\(no)")[index]))!
}


findNthDigit(190)
