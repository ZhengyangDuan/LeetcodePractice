//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var x: [Int] = [8,9,9,9]

for i in (0...x.count-1).reversed(){
    if x[i] != 9 {
        x[x.count-1] += 1
        print(x)
    }else{
        x[i] = 0
        print(x)
    }
}
if x[0] == 0 {
    x.insert(1, at: 0)
}

